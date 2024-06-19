page 50002 "Postal Code ASC"
{
    ApplicationArea = All;
    Caption = 'Postal Code';
    PageType = List;
    SourceTable = "Postal Code ASC";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(City; Rec.City)
                {
                    ToolTip = 'Specifies the value of the City field.';
                }
                field("Code"; Rec.Code)
                {
                    ToolTip = 'Specifies the value of the Code field.';
                }
                field(County; Rec.County)
                {
                    ToolTip = 'Specifies the value of the Country field.';
                }
            }
        }
    }
    actions
    {
        area(processing)
        {
            action(Export)
            {
                ApplicationArea = All;
                RunObject = xmlport "Export ASC";
                ToolTip = 'Executes the XML Port Export ASC action.';
                Image = XMLFile;
            }
            action(Import)
            {
                ApplicationArea = All;
                RunObject = xmlport "Import ASC";
                ToolTip = 'Executes the XML Port Export ASC action.';
                Image = Placeholder;
            }
        }
    }
}
