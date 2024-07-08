namespace TableIntroduction.TableIntroduction;

using Microsoft.Inventory.Item;

pageextension 80515 ImageExtension extends "Item Card"
{
    layout
    {

    }
    actions
    {
        addafter(Functions)
        {
            action(ImportItemPicture)
            {
                ApplicationArea = All;
                Caption = 'Import Item Picture';

                trigger OnAction()
                var
                    ImageManagement: Codeunit ImageManagement;
                begin
                    ImageManagement.ImportitemPicture(Rec);
                end;

            }
           
            action(ExportItemPicture)
            {
                ApplicationArea = All;
                Caption = 'Export Item Picture';
               
                
                trigger OnAction()
                var
                    ImageManagement: Codeunit ImageManagement;
                begin
                    ImageManagement.ExportItemPicture(Rec);
                end;
            }
        }
    }
}
