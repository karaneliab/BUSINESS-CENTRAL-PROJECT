table 80507 Pet
{
    Caption = 'Pet';
    TableType = Normal;
    fields
    {
        field(1; PetNo; Code[20])
        {
            Caption = 'Pet No';
            // NotBlank = true;
        }
        field(2; Name; Text[100])
        {
            Caption = 'Name';
        }
        field(3; VetVendorNo; Code[20])
        {
            Caption = 'Vet vendor number';
            TableRelation = Vendor."No.";
        }
        field(4; VetName; Text[100])
        {
            Caption = 'Vet Name';
            FieldClass = FlowField;
            CalcFormula = lookup(Vendor.Name where("No." = field(VetVendorNo)));
            Editable = false;
        }
    }
    keys
    {
        key(PK;PetNo)
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    var
        NoSeriesMgt: Codeunit "No. Series";
        NewNoSeriesCode: Code[20];
    begin
    // Check if PetNo is not assigned
        if Rec.PetNo = '' then begin
        // Use the "No. Series" codeunit to assign a new number
            NewNoSeriesCode := NoSeriesMgt.GetNextNo('PET', Today, true); // Assuming GetNextNo has the correct parameters
        // If there is a new number, set it to the PetNo
            if NewNoSeriesCode <> '' then
                Rec.PetNo := NewNoSeriesCode;
        end;
    end;

}