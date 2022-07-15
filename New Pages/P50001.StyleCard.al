page 50001 "Style Card"
{
    Caption = 'Style Card';
    PageType = Card;
    SourceTable = "Reference Data";

    layout
    {
        area(content)
        {
            group(General)
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

    trigger OnAfterGetCurrRecord()
    begin
        Rec.Type := Rec.Type::Style;
    end;
}
