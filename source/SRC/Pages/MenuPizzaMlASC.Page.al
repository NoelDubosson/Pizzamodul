page 50012 "Menu PizzaM l ASC"
{
    ApplicationArea = All;
    Caption = 'Menu PizzaM l';
    PageType = List;
    SourceTable = "Menu PizzaM ASC";
    UsageCategory = Lists;
    CardPageId = "Menu PizzaM c ASC";

    layout
    {
        area(content)
        {
            repeater(General)
            {

                field("Menu No."; Rec."Menu No.")
                {
                    ToolTip = 'Specifies the value of the No. field.';
                }
                field(NameM; Rec.NameM)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field(Price; Rec.Price)
                {
                    ToolTip = 'Specifies the value of the Price field.';
                }
            }
        }
        area(FactBoxes)
        {
            part(MyPart0; "FactBox Menu ASC")
            {
                ApplicationArea = All;
                SubPageLink = "Menu No." = field("Menu No.");
            }
        }
    }
}
