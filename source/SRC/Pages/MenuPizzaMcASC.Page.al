page 50011 "Menu PizzaM c ASC"
{
    ApplicationArea = All;
    Caption = 'Menu PizzaM c';
    PageType = Card;
    SourceTable = "Menu PizzaM ASC";
    
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
            
                field("No."; Rec."Menu No.")
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
                //   field("Quantity in orders"; Rec."Quantity in orders")
                // {
                //     ToolTip = 'Specifies the value of the Quantity in orders field.';
                // }
                //       field("Quantity in archivated orders"; Rec."Quantity in archivated orders")
                // {
                //     ToolTip = 'Specifies the value of the Quantity in archivated orders field.';
                // }
                //     field("Number of ratings"; Rec."Number of ratings")
                // {
                //     ToolTip = 'Specifies the value of the Number of ratings field.';
                // }
                //     field("Average Rating"; Rec."Average Rating")
                // {
                //     ToolTip = 'Specifies the value of the Average Rating field.';
                // }
                //   field("Min. rating"; Rec."Min. rating")
                // {
                //     ToolTip = 'Specifies the value of the Min. rating field.';
                // }
            
                // field("Max. rating"; Rec."Max. rating")
                // {
                //     ToolTip = 'Specifies the value of the Max. rating field.';
                // }
              
            }
        }

       
    }
}
