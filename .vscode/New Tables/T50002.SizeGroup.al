table 50002 "Size Group"
{
    Caption = 'Size Group';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Size Group Code"; Code[20])
        {
            Caption = 'Size Group Code';
            DataClassification = ToBeClassified;
        }
        field(2; "Size Code"; Code[20])
        {
            Caption = 'Size Code';
            DataClassification = ToBeClassified;
            TableRelation = "Reference Data".Code where(Type = const(Size));

            trigger OnValidate()
            var
                RefDataRec: Record "Reference Data";
            begin
                if "Size Code" <> '' then begin
                    RefDataRec.Reset();
                    if RefDataRec.Get(RefDataRec.Type::Size, "Size Code") then begin
                        Description := RefDataRec.Description;
                    end;
                end;
            end;
        }
        field(3; Description; Text[60])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Size Group Code")
        {
            Clustered = true;
        }
    }
}
