page 80522 "Factbox Example"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Factbox Example';    
    
    layout
    {
        area(FactBoxes)
        {
           part(Picture;"Item Picture")
           {
            ApplicationArea = All;
            Caption = 'Item picture';
            
           }
           part(Customer; "Customer Details FactBox")
           {
            ApplicationArea = All;
            Caption = 'Customer Details';
            
           }
           part(KPI; "Acc. Sched. KPI Web Srv. Lines")
           {
            ApplicationArea = All;
            SubPageView = sorting("Acc. Schedule Name");
            
           }
           systempart(Link; Links)
           {
            ApplicationArea = All;
            Visible = true;
           }
           systempart(Notes; Notes)
           {
            ApplicationArea = All;
            
           }
        }
    }
    
  
}