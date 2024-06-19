page 50008 "SubPage PizzaM ASC"
{
    ApplicationArea = All;
    Caption = 'Menu';
    PageType = ListPart;
    SourceTable = "Order Line Pizzamodul ASC";
    Editable = true;
    AutoSplitKey = true;
    DelayedInsert = true;
    
    layout
    {
        area(content)
        {
            repeater(General)

            {
                field("Menu No."; Rec."Menu No.")
                {
                    ToolTip = 'Specifies the value of the Menu No. field.';
                    TableRelation = "Menu PizzaM ASC";
                }
                field(Quantity; Rec.Quantity)
                {
                    ToolTip = 'Specifies the value of the Quantity field.';
    
                }
                field("Unit Price"; Rec."Unit Price")
                {
                    ToolTip = 'Specifies the value of the Unit Price field.';
                }
                field("Total Price"; Rec."Total Price")
                {
                    ToolTip = 'Specifies the value of the Total Price field.';
                }
            }
        }
    }

    
}
