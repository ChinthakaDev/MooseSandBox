pageextension 50000 "Item Card.Ext" extends "Item Card"
{
    layout
    {
        addafter(Item)
        {
            field("Style Code"; Rec."Style Code")
            {
                ApplicationArea = all;
            }
            field("Color Code"; Rec."Color Code")
            {
                ApplicationArea = all;
            }
            field("Size Code"; Rec."Size Code")
            {
                ApplicationArea = all;
            }
        }
    }
}
