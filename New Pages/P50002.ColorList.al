page 50002 ColorList
{
    ApplicationArea = All;
    Caption = 'Color List';
    CardPageId = ColorCard;
    PageType = List;
    SourceTable = "Reference Data";
    UsageCategory = Administration;
    SourceTableView = where(Type = const(Color));
    ModifyAllowed = false;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Code"; Rec."Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Code field.';
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
