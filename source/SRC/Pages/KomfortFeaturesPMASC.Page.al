page 50019 KomfortFeaturesPMASC
{
    ApplicationArea = All;
    Caption = 'KomfortFeaturesPM';
    PageType = Card;
    SourceTable = "Order Header Archive ASC";
    Editable = false;
    
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                
                field("Order Date"; Rec."Order Date")
                {
                    ToolTip = 'Specifies the value of the Order Date field.';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                }
            }
        }
    }
}
