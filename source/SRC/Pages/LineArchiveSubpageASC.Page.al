page 50017 "Line Archive Subpage ASC"
{
    ApplicationArea = All;
    Caption = 'Line Archive Subpage';
    PageType = ListPart;
    SourceTable = "Order Line Archive ASC";
    Editable = true;


    layout
    {
        area(content)
        {
            repeater(General)
            {

                field("Menu No."; Rec."Menu No.")
                {
                    ToolTip = 'Specifies the value of the Name field.';
                    Editable = false;
                }
                field(Quantity; Rec."Quantity")
                {
                    ToolTip = 'Specifies the value of the Quantity field.';
                    Editable = false;
                }
                field("Unit Price"; Rec."Unit Price")
                {
                    ToolTip = 'Specifies the value of the Unit Price field.';
                    Editable = false;
                }
                field("Total Price."; Rec."Total Price")
                {
                    ToolTip = 'Specifies the value of the Total Price field.';
                    Editable = false;
                }
                field(Rating; Rec."Rating")
                {
                    ToolTip = 'Specifies the value of the Rating field.';
                    Editable = true;
                }
            }
        }
        
    }

  trigger OnQueryClosePage(CloseAction: Action): Boolean
    begin
        if CloseAction = ACTION::LookupOK then
            // if RecordChanged then
                CODEUNIT.Run(CODEUNIT::"Pizzamodul Line Archive ASC", Rec);
    end;

}           

