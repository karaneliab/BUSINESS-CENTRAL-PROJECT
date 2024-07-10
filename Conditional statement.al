page 80523 "Conditional Statement"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    // SourceTable = TableName;
    Caption = 'Conditional Statement';
    DeleteAllowed = true;
    InsertAllowed = false;
    
    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Total;Total)
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                   
                    begin
                        if Total < 5000 then
                            Message('OOPS! not the expected amount')
                            else
                            if(Total > 5000) and
                              (Total < 10000) then
                                Message('you will get a 5% discount')
                            else
                            if(Total > 10000) and
                              (Total < 20000) then
                              Message('you will get a 10% discount')
                            
                        
                    end;
                    
                }
                field(Coffee;Coffee)
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    begin
                        if Coffee = 'Yes' then
                        Total := Total + 1000
                        else
                        Total := Total - 1000
                        
                    end;
                }
                field(Salary;Salary)
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    begin
                        if Salary < 15000 then
                            Message('you should have worked for a period of more than six months')
                        else
                            if(Salary > 15000) and
                              (Salary < 20000) then
                                Message('you should have worked for more than 12 months and less than 18 months')
                        else
                            if(Salary > 20000) and
                               (Salary < 40000) then
                                Message('you should have worked for more than 18 months and less than 24 months')

                        
                    end;
                }
            }
        }
    }
    
    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;
                
                trigger OnAction()
                begin
                    
                end;
            }
        }
    }
    
    var
        Salary : Decimal;
        Coffee : Text;
        Total : Integer;
   

}