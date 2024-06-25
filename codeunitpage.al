page 80515 "code unit page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;


    actions
    {
        area(Processing)
        {
            action(Addition)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Mycode.run();

                end;

            }
        }
    }

    var
        Mycode: Codeunit MyCodeunit;
    
    
    
}