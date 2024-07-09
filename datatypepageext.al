pageextension 80520 CustomeListExt extends "Customer List"
{
    trigger OnOpenPage()
    var
        Dict: Dictionary of[Text,Text];
        Start,Stop : Time;
        i : Integer;
    begin
        Start := Time();
        for i :=1 to 500000 do begin
            Dict.Add(format(i),format(i));

        end;
        Stop := Time();
        Message('Time spend %1', Stop - Start);


    end;
   
    
    
}