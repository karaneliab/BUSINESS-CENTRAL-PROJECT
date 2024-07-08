namespace TableIntroduction.TableIntroduction;

using Microsoft.Inventory.Item;
using System.Environment;

// codeunit 80516 ImageManagement
// {
    
//     procedure ImportitemPicture(Item: Record Item)
//     var
//         PicInstream: InStream;
//         FromFileName: Text;
//         OverrideImageQst: Label 'The existing image will be replaced. Do you want to continue?', Locked = false, MaxLength = 250;
//     begin
//         with Item do begin
//             if Picture.Count > 0 then
//                 if not Confirm(OverrideImageQst) then
//                     exit;
            
//             if UploadIntoStream('Import','','All Files (*.*)|*.*',
//             FromFileName,PicInstream) then begin
//                 Clear(Picture);
//                 Picture.ImportStream(PicInstream, FromFileName);
//                 Modify(true);
//             end;

//         end;
//     end;

//     procedure ExportItemPicture(item: Record Item)
//     var
//         PicInstream:InStream;
//         Index: Integer;
//         TenantMedia: Record "Tenant Media"; 
//         FileName: Text;
//     begin
//         with Item do begin
//             if Picture.Count = 0 then
//                 exit;
//             for Index := 1 to Picture.Count do begin
//                 if TenantMedia.Get(Picture.Item(Index)) then begin
//                     TenantMedia.calcfields(Content);
//                     if TenantMedia.Content.HasValue then begin
//                         FileName := TableCaption + '_Image'+ format(Index) + GetTenantMediaFileExtension(TenantMedia);
//                         TenantMedia.Content.CreateInStream(PicInstream);
//                         DownloadFromStream(PicInstream,'','','',FileName);
//                     end;
//                 end;
//             end;
//         end;
//     end;

//     local procedure GetTenantMediaFileExtension(var TenantMedia: "TenantMedia"): Text;
//     var
//         myInt: Integer;
//     begin
//         case TenantMedia."Mime Type" of
//             'image/jpeg':
//                 exit('.jpg');
//             'image/png':
//                 exit('.png');
//             'image/bmp':
//                 exit('.bmp');
//             'image/gif':
//                 exit('.gif');
//             'image/tiff':
//                 exit('.tiff');
//             'image/wmf':
//                 exit('.wmf')
            


//         end;
//     end;
// }

codeunit 80516 ImageManagement
{
    procedure ImportitemPicture(Item: Record Item)
    var
        PicInstream: InStream;
        FromFileName: Text;
        OverrideImageQst: Label 'The existing image will be replaced. Do you want to continue?', Locked = false, MaxLength = 250;
    begin
        if Item.Picture.Count > 0 then
            if not Confirm(OverrideImageQst) then
                exit;

        if UploadIntoStream('Import','','All Files (*.*)|*.*', FromFileName, PicInstream) then begin
            Clear(Item.Picture);
            Item.Picture.ImportStream(PicInstream, FromFileName);
            Item.Modify(true);
        end;
    end;

    procedure ExportItemPicture(Item: Record Item)
    var
        PicInstream: InStream;
        Index: Integer;
        TenantMedia: Record "Tenant Media"; 
        FileName: Text;
    begin
        if Item.Picture.Count = 0 then
            exit;
        for Index := 1 to Item.Picture.Count do begin
            if TenantMedia.Get(Item.Picture.Item(Index)) then begin
                TenantMedia.CalcFields(TenantMedia.Content);
                if TenantMedia.Content.HasValue then begin
                    FileName := Item.TableCaption + '_Image' + Format(Index) + GetTenantMediaFileExtension(TenantMedia);
                    TenantMedia.Content.CreateInStream(PicInstream);
                    DownloadFromStream(PicInstream, '', '', '', FileName);
                end;
            end;
        end;
    end;

    local procedure GetTenantMediaFileExtension(TenantMedia: Record "Tenant Media"): Text;
    begin
        case TenantMedia."Mime Type" of
            'image/jpeg':
                exit('.jpg');
            'image/png':
                exit('.png');
            'image/bmp':
                exit('.bmp');
            'image/gif':
                exit('.gif');
            'image/tiff':
                exit('.tiff');
            'image/wmf':
                exit('.wmf');
            else
                exit('');
        end;
    end;
}