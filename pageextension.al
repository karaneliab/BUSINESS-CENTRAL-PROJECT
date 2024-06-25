pageextension 80510 "Social Media Card" extends "Customer Card"
{
    layout
    {
        addfirst(General)
        {
            field(Facebook;Rec.Facebook)
            {
                ApplicationArea = All;
            }
            field(Twitter;Rec.Twitter)
            {
                ApplicationArea = All;
            }
            field(Instagram;Rec.Instagram)
            {
                ApplicationArea = All;
            }
            field(LinkeIn;Rec.LinkeIn)
            {
                ApplicationArea = All;
            }
        }

       
    }
    
    actions
    {
        // Add changes to page actions here
    }
    
    var
        myInt: Integer;
}