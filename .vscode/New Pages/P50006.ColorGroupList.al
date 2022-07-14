page 50006 "Color Group List"
{
    ApplicationArea = All;
    Caption = 'Color Group List';
    PageType = List;
    SourceTable = "Color Group";
    UsageCategory = Administration;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Color Group Code"; Rec."Color Group Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Color Group Code field.';
                }
                field("Color Code"; Rec."Color Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Color Code field.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Description field.';
                }
            }
        }
    }
}
