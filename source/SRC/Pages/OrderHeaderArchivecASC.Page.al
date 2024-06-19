page 50016 "Order Header Archive c ASC"
{
    ApplicationArea = All;
    Caption = 'Order Header Archive l';
    PageType = Card;
    SourceTable = "Order Header Archive ASC";
  

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                Editable = false;

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
                 field("Average Rating"; Rec."Average Rating")
                {
                    ToolTip = 'Specifies the value of the Average Rating field.';
                }
            }
            group(Menu)
            {
                part("Line Archive Subpage ASC"; "Line Archive Subpage ASC")
                {
                    SubPageLink = "Order No." = field("No.");
                }
            }
            
        }

         
        
    }
      actions
    {
        area(Processing)
        {
            action("Undo Archive")
            
            {
                ApplicationArea = All;
                Image = Archive;
                ToolTip = 'Executes the undo Archive action.';
                trigger OnAction()
                var
                Codeunit2: Codeunit ArchivFunktionenASC;
                begin
                    Codeunit2.CopyRows2();
                end;
            }
        }
    }
}
