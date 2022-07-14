page 50000 "Style List"
{
    ApplicationArea = All;
    Caption = 'Style List';
    CardPageId = "Style Card";
    PageType = List;
    SourceTable = "Reference Data";
    UsageCategory = Administration;
    SourceTableView = where(Type = const(Style));
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
