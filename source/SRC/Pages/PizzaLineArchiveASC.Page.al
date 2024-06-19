page 50015 "Pizza Line Archive ASC"
{
    ApplicationArea = All;
    Caption = 'Pizza Line Archive';
    PageType = List;
    SourceTable = "Order Line Archive ASC";
    UsageCategory = Lists;

    
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                
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
            }
        }
    }
}
