page 50014 "Pizza Orders Archive ASC"
{
    ApplicationArea = All;
    Caption = 'Pizza Orders Archive';
    PageType = List;
    SourceTable = "Order Header Archive ASC";
    UsageCategory = Lists;
    Editable = false;
    CardPageId = "Order Header Archive c ASC";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                Caption = 'General';

                field("No."; Rec."No.")
                {

                    ToolTip = 'Specifies the value of the No. field.';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field("Address No."; Rec."Address No.")
                {
                    ToolTip = 'Specifies the value of the Address No.  field.';
                }
                field(City; Rec.City)
                {
                    ToolTip = 'Specifies the value of the City field.';
                }
                field("Order Date"; Rec."Order Date")
                {
                    ToolTip = 'Specifies the value of the Count field.';
                }
                field("E-Mail"; Rec."E-Mail")
                {
                    ToolTip = 'Specifies the value of the Text field.';
                }

            }
        }

        
    }
     actions
    {
        area(Processing)
        {
            action(DeletEverything)
            {
                ApplicationArea = All;
                Caption = 'Delete Everything';
                Image = Delete;
                ToolTip = 'Executes the Delete Everything action.';

                trigger OnAction()
                var
                LineDelete: Record "Order Line Archive ASC";
                begin
                    rec.DeleteAll();
                    LineDelete.DeleteAll();
                end;
            }
        }
    }
}
