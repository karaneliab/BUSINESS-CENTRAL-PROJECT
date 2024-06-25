namespace TableIntroduction.TableIntroduction;

using Microsoft.Sales.Customer;

tableextension 80510 "Social Media" extends Customer
{
    fields
    {
        field(80500; Facebook; Text[40])
        {
            Caption = 'Facebook';
            DataClassification = ToBeClassified;
        }
        field(80501; Twitter; Text[40])
        {
            Caption = 'Twitter';
            DataClassification = ToBeClassified;
        }
        field(80502; Instagram; Text[40])
        {
            Caption = 'Instagram';
            DataClassification = ToBeClassified;
        }
        field(80503; LinkeIn; Text[40])
        {
            Caption = 'LinkeIn';
            DataClassification = ToBeClassified;
        }
       
    }
}
