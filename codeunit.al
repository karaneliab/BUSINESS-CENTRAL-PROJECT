codeunit 80511 MyCodeunit
{
    trigger OnRun()
    begin
        num1 := 12;
        num2 := 22;
        add(num1,num2);
        
    end;
    procedure add(num1: Integer; num2: Integer)
    
    var
        tot: Integer;
    begin
        tot := num1 + num2;
        Message('sum of two numbers is %1,%2 is%3', num1,num2,tot);
    end;
    var
    num1: Integer;
    num2: Integer;
}