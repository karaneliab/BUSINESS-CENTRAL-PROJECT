page 80521 "Data Type Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'DatatypesCard';
    
    layout
    {
        area(Content)
        {
            group("Fundamental Data type - Numeric data type")
            {
                field(LoopNo;LoopNo)
                {
                    ApplicationArea = All;
                    Caption = 'Integer';
                    
                }
                field(bigin;bigin)
                {
                    ApplicationArea = All;
                    Caption = 'big integer';

                }
                field(Amount;Amount)
                {
                    ApplicationArea = All;
                    Caption = 'amount in decimal';
                    DecimalPlaces = 3;
                }

                field(Color;Color)
                {
                    ApplicationArea = All;
                    Caption = 'Color in option';
                }
                field(Ch;Ch)
                {
                    ApplicationArea = All;
                    Caption = 'Char';
                }
                field(byt;byt)
                {
                    ApplicationArea = All;
                    Caption = 'byte';
                }
                field(duration;duration)
                {
                    ApplicationArea = All;
                    Caption = 'Duration';
                }
            }

            group("Fundamental variables - String")
            {
                field("Code Number";"Code Number")
                {
                    ApplicationArea = All;
                    Caption = 'Code Number in code';

                    
                }
                field(Description;Description)
                {
                    ApplicationArea = All;
                    Caption = 'Description in text';
                }
            }

            group("Fundamental Variables - Other")
            {
                field(YesOrNo;YesOrNo)
                {
                    ApplicationArea = All;
                    Caption = 'YesOrNo in boolean';
                    
                }
                field("When Was It";"When was It")
                {
                    ApplicationArea = All;
                    Caption = 'Date';
                }
                field("What Time";"What time")
                {
                    ApplicationArea = All;
                    Caption = 'Time';
                }
                field("When and What";"When and What")
                {
                    ApplicationArea = All;
                    Caption = 'Date and Time';
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
        LoopNo: Integer;
        bigin: BigInteger;
        Amount: Decimal;
        Color: Option Yellow,Green,Blue,Orange, "Olive green",Violet,Grey;
        ch: Char;
        byt: Byte;
        duration: Duration;
        "Code Number": Code[30];
        YesOrNo: Boolean;

        Description: Text[50];
        "When Was It": Date;
        "What time": Time;
        "When and What": DateTime;

}