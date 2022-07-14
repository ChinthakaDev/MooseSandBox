tableextension 50000 "Item.Ext" extends Item
{
    fields
    {
        field(50000; "Style Code"; Code[20])
        {
            Caption = 'Style Code';
            DataClassification = ToBeClassified;
            TableRelation = "Reference Data".Code where(Type = const(Style));
        }
        field(50001; "Color Code"; Code[20])
        {
            Caption = 'Color Code';
            DataClassification = ToBeClassified;
            TableRelation = "Reference Data".Code where(Type = const(Color));
        }
        field(50002; "Size Code"; Code[20])
        {
            Caption = 'Size Code';
            DataClassification = ToBeClassified;
            TableRelation = "Reference Data".Code where(Type = const(Size));
        }
    }
}
