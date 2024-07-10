page 80524 "Repeatetive Statements"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Repeatetive Statements';
    
    
    layout
    {
        area(Content)
        {
            group("Input for Switch")
            {
                Caption = 'Input';
                field(Difficulty; Difficulty)
                {
                    ApplicationArea = All;
                    ToolTip = 'Select for Difficulty.';
                    Caption = ' Difficulty';

                    trigger OnValidate()
                    
                    begin
                        GetSuggestion();
                        
                    end;
                    
                }
            }
            group("Output")
            {
                Caption = 'Output';
                field(Suggestion;Suggestion)
                {
                    ApplicationArea = All;
                    ToolTip = 'Suggestion.';
                    Caption = 'Suggestion';
                    Editable = false;

                }
                field(Level;Level)
                {
                    ApplicationArea = All;
                    ToolTip = 'Level.';
                    Caption = 'Level';
                    Editable = false;

                }
            }
        }
    }
    
    actions
    {
        area(Processing)
        {
            action("Execute for loop")
            {
                ApplicationArea = All;
                Caption = 'Execute/Try for loop';
                
                trigger OnAction()
                begin
                    Tryfor();
                end;
            }
            action("Execute for down loop")
            {
                ApplicationArea = All;
                Caption = 'Execute/Try for down to loop';
                
                trigger OnAction()
                begin
                    Tryfordownto();
                end;
            }
            action("Execute for each")
            {
                ApplicationArea = All;
                Caption = 'Execute/Try for each';
                
                trigger OnAction()
                begin
                    Tryforeach();
                end;
            }
            action("Execute while loop")
            {
                ApplicationArea = All;
                Caption = 'Execute/Try while loop';
                
                trigger OnAction()
                begin
                    Trywhile();
                end;
            }
            action("Execute for repeat until loop")
            {
                ApplicationArea = All;
                Caption = 'Execute/Try for repeat until loop';
                
                trigger OnAction()
                begin
                    Tryrepeat();
                end;
            }
        }
    }
    
    var
        Level: Text[30];
        Suggestion: Text[50];
        Difficulty: Integer;
        // the global variables fo for loop
        total: integer;
        intCount: Integer;

        // variables for down to
         intCount1: Integer;
        totalSales: Integer;
        numberSales: Integer;
        sales: array[5] of Integer;


        //for each

        stringList: List of [Text[20]];
        stringItem: Text[20];


        //while

        index: Integer;
        totalSaless: Integer;
        saless: array[5] of Integer;

        local procedure Tryfor()
        begin
            total := 0;
            for intCount := 1 to 5 do
                total := total + 3;
            Message('%1', total)
        end;

        local procedure Tryfordownto()
        begin
            sales[1] := 20;
            sales[2] := 10;
            sales[3] := 30;
            sales[4] := 15;
            sales[5] := 25;
            totalSales := 0;
            for intCount1 := 5 downto 1 do begin
                totalSales := totalSales + sales[intCount1];
            end;
            Message('%1', totalSales)


        end;

        local procedure Tryforeach()
        begin
            stringList.Add('Karan');
            stringList.Add('Belindah');
            stringList.Add('Bigman');
            stringList.Add('Kim');
            stringList.Add('Kenny');
            foreach stringItem in stringList do
                Message( stringItem)


        end;
        local procedure Trywhile()
        begin
            index := 0;
            totalSales := 10;
            saless[1] := 10;
            saless[2] := 30;
            saless[3] := 15;
            saless[4] := 25;
            while totalSaless > 10 do begin
                index := index + 1;
                totalSaless := totalSaless + saless[index];
                Message('%1',totalSaless);
            end;

        end;
        local procedure Tryrepeat()
        begin
            index := 0;
            totalSaless := 10;
            saless[1] := 10;
            saless[2] := 30;
            saless[3] := 15;
            saless[4] := 25;
            saless[5] := 25;
            repeat
                index := index + 1;
                totalSaless := totalSaless + saless[index];
                Message('Sales is greater than 10: %1',totalSaless);
            until totalSaless > 10;

            
        end;
        // switch case
        local procedure GetSuggestion()
        begin
            Level := '';
            Suggestion := '';
            
            case Difficulty of
            1 .. 5:
                begin
                    Level := 'Novice';
                    Suggestion := 'Continue  Learning from Microsoft Learn: https://learn.microsoft.com/en-us/training/paths/get-started-dynamics-365-business-central/';
                end;
            6 .. 8 :
                begin
                    Level := 'Intermediate';
                    Suggestion := 'Attend instructor Led';

            
                end;
            9 .. 10 :
                begin
                    Level := 'Expert';
                    Suggestion := 'do alot of practice by try more projects';
                end;

            end;

        end;



}