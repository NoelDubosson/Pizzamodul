table 50005 "Order Line Pizzamodul ASC"
{
    Caption = 'Order Line Pizzamodul';
    DataClassification = CustomerContent;
    DrillDownPageId = "Order Line PZ l ASC";

    fields
    {
        field(1; "Order No."; Code[20])
        {
            Caption = 'Order No.';
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; "Menu No."; Code[20])
        {
            Caption = 'Menu No.';
            TableRelation = "Menu PizzaM ASC";
            trigger OnValidate()
            var
                Menu: Record "Menu PizzaM ASC";
            begin
                Quantity := 1;
                Menu.Get("Menu No.");
                "Unit Price" := Menu."Price";
                "Total Price" := Menu.Price;
            end;
        }
        field(4; Quantity; Decimal)
        {
            Caption = 'Quantity';
            trigger OnValidate()
            begin
                "Total Price" := Quantity * "Unit Price";
            end;
        }
        field(5; "Unit Price"; Decimal)
        {
            Caption = 'Unit Price';
        }
        field(6; "Total Price"; Decimal)
        {
            Caption = 'Total Price';
            Editable = false;
        }
        //  field(7; NameLiferant; Text[50])
        // {
        //     Caption = 'Name';
        // }
        // field(8; Adresse; Text[50])
        // {
        //     Caption = 'Adresse';
        // }
        // field(9; "E-Mail"; Code[20])
        // {
        //     Caption = 'E-Mail';
        // }
        // field(10; Restaurant; Text[50])
        // {
        //     Caption = 'Restaurant';
        // }
        
    }
    keys
    {
        key(PK; "Order No.", "Line No.")
        {
            Clustered = true;
        }
    }


}

