page 50004 SizeList
{
    ApplicationArea = All;
    Caption = 'Size List';
    CardPageId = SizeCard;
    PageType = List;
    SourceTable = "Reference Data";
    UsageCategory = Administration;
    SourceTableView = where(Type = const(Size));
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
