page 50005 "ListPart Remark ASC"
{
    ApplicationArea = All;
    Caption = 'ListPart Remark ';
    PageType = ListPart;
    SourceTable = "Bemerkungen My Adress ASC";
    


    layout
    {
        area(content)
        {
            repeater(General)
            
            {
                field("Information about the customer/vendor"; Rec."Information about the customer/vendor")
                {
                    ToolTip = 'Specifies the value of the Information about the customer/vendor field.';
                    ApplicationArea = All;
                }
                field("Name of the owner"; Rec."Name of the owner")
                {
                    ToolTip = 'Specifies the value of the Name of the owner field.';
                    ApplicationArea = All;
                }
                field(Amount; Rec."Amount")
                {
                    ToolTip = 'Specifies the value of the Amount field.';
                    ApplicationArea = All;
                }
                field("Other remarks"; Rec."Other remarks")
                {
                    ToolTip = 'Specifies the value of the Other remarks field.';
                    ApplicationArea = All;
                }
            }
        }
    }
}
