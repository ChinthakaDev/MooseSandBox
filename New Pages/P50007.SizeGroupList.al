page 50007 "Size Group List"
{
    ApplicationArea = All;
    Caption = 'Size Group List';
    PageType = List;
    SourceTable = "Size Group";
    UsageCategory = Administration;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Size Group Code"; Rec."Size Group Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Size Group Code field.';
                }
                field("Size Code"; Rec."Size Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Size Code field.';
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
