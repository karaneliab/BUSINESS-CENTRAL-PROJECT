namespace TableIntroduction.TableIntroduction;

page 80505 "Pet list"
{
    ApplicationArea = All;
    Caption = 'Pet list';
    PageType = List;
    SourceTable = Pet;
    UsageCategory = Lists;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(PetNo; Rec.PetNo)
                {
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field(VetVendorNo; Rec.VetVendorNo)
                {
                    ApplicationArea = All;
                }
                field(VetName;Rec.VetName)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
