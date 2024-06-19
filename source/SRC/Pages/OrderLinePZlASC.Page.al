page 50021 "Order Line PZ l ASC"
{
    ApplicationArea = All;
    Caption = 'Order Line PZ l';
    PageType = List;
    SourceTable = "Order Line Pizzamodul ASC";
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Line No."; Rec."Line No.")
                {
                    ToolTip = 'Specifies the value of the Line No. field.';
                }
                field("Menu No."; Rec."Menu No.")
                {
                    ToolTip = 'Specifies the value of the Menu No. field.';
                }
                field("Order No."; Rec."Order No.")
                {
                    ToolTip = 'Specifies the value of the Order No. field.';
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
                // field(NameLiferant; Rec.NameLiferant)
                // {
                //     ToolTip = 'Specifies the value of the Name field.';
                // }
                // field(Adresse; Rec.Adresse)
                // {
                //     ToolTip = 'Specifies the value of the Adresse field.';
                // }
                // field(Restaurant; Rec.Restaurant)
                // {
                //     ToolTip = 'Specifies the value of the Restaurant field.';
                // }
                // field("E-Mail"; Rec."E-Mail")
                // {
                //     ToolTip = 'Specifies the value of the E-Mail field.';
                // }
            }
        }
    }
}
