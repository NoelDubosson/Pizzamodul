page 50020 FactBoxAddressASC
{
    ApplicationArea = All;
    Caption = 'FactBoxAddress';
    PageType = ListPart;
    SourceTable = "Address PizzaM ASC";
    
    layout
    {
        area(content)
        {
        
            
                field("Number of archived orders"; Rec."Number of archived orders")
                {
                    ToolTip = 'Specifies the value of the Number of archived orders field.';
                }
                field("Number of open orders"; Rec."Number of open orders")
                {
                    ToolTip = 'Specifies the value of the Number of open orders field.';
                }
                field("Number of ratings"; Rec."Number of ratings")
                {
                    ToolTip = 'Specifies the value of the Number of ratings field.';
                }
            
        }
    }
}
