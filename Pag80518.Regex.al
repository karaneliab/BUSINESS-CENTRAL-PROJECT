namespace TableIntroduction.TableIntroduction;
using System.Utilities;

page 80518 RegExValidation
{
    ApplicationArea = All;
    Caption = 'RegExValidation';
    PageType = Card;
    UsageCategory = Administration;
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                field(EmpID;EmpID)
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    
                    begin
                        pattern := '[A-Z]{3}\-[0-9,A-Z]{3}';
                        if regex.IsMatch(EmpID,pattern,0) then
                        Message('Match')
                        else
                        Error('Enter the valid input');
                        
                    end;
                }
                field(email;email)
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    begin
                        pattern := '^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$';
                        if regex.IsMatch(email,pattern,0) then
                        Message('Matched')
                        else
                        Error('Invalid email format');
                    end;

                }
                
            }
        }
    }
    var
        EmpID: Text[30];
        regex: Codeunit Regex;
        pattern: Text;
        email: Text[50];
}
