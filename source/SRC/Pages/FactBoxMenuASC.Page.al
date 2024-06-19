page 50018 "FactBox Menu ASC"
{
    ApplicationArea = All;
    Caption = 'FactBox Menu';
    PageType = ListPart;
    SourceTable = "Menu PizzaM ASC";

    layout
    {
        area(Content)
        {
            
           
          
            field("Average Rating"; Rec."Average Rating")
            {
                ToolTip = 'Specifies the value of the Average Rating field.';
            }
            field("Max. rating"; Rec."Max. rating")
            {
                ToolTip = 'Specifies the value of the Max. rating field.';
            }
            field("Min. rating"; Rec."Min. rating")
            {
                ToolTip = 'Specifies the value of the Min. rating field.';
            }
            field("Number of ratings"; Rec."Number of ratings")
            {
                ToolTip = 'Specifies the value of the Number of ratings field.';
            }
            field("Quantity in orders"; Rec."Quantity in orders")
            {
                ToolTip = 'Specifies the value of the Quantity in orders field.';
            }
            field("Quantity in archivated Orders"; Rec."Quantity in archivated Orders")
            {
                ToolTip = 'Specifies the value of the Quantity in archivated orders field.';
            }
        }
    }
}
