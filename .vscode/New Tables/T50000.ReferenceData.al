table 50000 "Reference Data"
{
    Caption = 'Reference Data';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Type"; Enum "Reference Data Types")
        {
            Caption = 'Type';
            DataClassification = ToBeClassified;
        }
        field(2; "Code"; Code[20])
        {
            Caption = 'Code';
            DataClassification = ToBeClassified;
        }
        field(3; Description; Text[60])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Type", Code)
        {
            Clustered = true;
        }
    }
}
