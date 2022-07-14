table 50001 "Color Group"
{
    Caption = 'Color Group';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Color Group Code"; Code[20])
        {
            Caption = 'Color Group Code';
            DataClassification = ToBeClassified;
        }
        field(2; "Color Code"; Code[20])
        {
            Caption = 'Color Code';
            DataClassification = ToBeClassified;
            TableRelation = "Reference Data".Code where(Type = const(Color));

            trigger OnValidate()
            var
                RefDataRec: Record "Reference Data";
            begin
                if "Color Code" <> '' then begin
                    RefDataRec.Reset();
                    if RefDataRec.Get(RefDataRec.Type::Color, "Color Code") then begin
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
        key(PK; "Color Group Code", "Color Code")
        {
            Clustered = true;
        }
    }
}
