table 50007 "Order Line Archive ASC"
{
    Caption = 'Order Line Archive';
    DataClassification = CustomerContent;
    DrillDownPageId = "Order Line Archive ASC";
    
    
    fields
    {
        field(1; "Order No."; Code[20])
        {
            Caption = 'Order No.';
            Editable = false;
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            Editable = false;
        }
        field(3; "Menu No."; Code[20])
        {
            Caption = 'Menu No.';
            Editable = false;
        }
        field(4; Quantity; Decimal)
        {
            Caption = 'Quantity.';
            Editable = false;
        }
        field(5; "Unit Price"; Decimal)
        {
            Caption = 'Unit Price';
            Editable = false;
        }
        field(6; "Total Price"; Decimal)
        {
            Caption = 'Total Price';
            Editable = false;
        }
            field(107; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            Editable = true;
        }
         field(7; Rating; Decimal)
        {
            Caption = 'Rating';
            Editable = true;
            MinValue = 1;
            MaxValue = 5;

        }

    }
    keys
    {
        key(PK; "Order No.","Line No.")
        {
            Clustered = true;
        }
    }


}
