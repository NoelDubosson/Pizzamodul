/// <summary>
/// Table Menu PizzaM ASC (ID 50009).
/// </summary>
table 50009 "Menu PizzaM ASC"
{
    Caption = 'Menu PizzaM';
    DataClassification = CustomerContent;
    DrillDownPageId = "Menu PizzaM l ASC";

    fields
    {
        field(1; "Menu No."; Code[50])
        {
            Caption = 'Menu No.';
        }
        field(2; NameM; Text[50])
        {
            Caption = 'Name';
        }
        field(3; Price; Decimal)
        {
            Caption = 'Price';
        }
        field(4; "Quantity in orders"; Decimal)
        {
            Caption = 'Quantity in orders';
            FieldClass = FlowField;
            CalcFormula = sum("Order Line Pizzamodul ASC".Quantity where("Menu No." = field("Menu No.")));
            Editable = false;
        }
        field(5; "Quantity in archivated Orders"; Decimal)
        {
            Caption = 'Quantity in archivated Orders';
            FieldClass = FlowField;
            CalcFormula = sum("Order Line Archive ASC".Quantity where("Menu No." = field("Menu No.")));
            Editable = false;
        }
        field(6; "Number of ratings"; Integer)
        {
            Caption = 'Number of ratings';
            FieldClass = FlowField;
            CalcFormula = count("Order Line Archive ASC" where("Menu No." = field("Menu No.")));
            Editable = false;
        }
        field(7; "Average Rating"; Decimal)
        {
            Caption = 'Average Rating';
            FieldClass = FlowField;
            CalcFormula = average("Order Line Archive ASC".Rating where("Menu No." = field("Menu No."), Rating = filter(<>0)));
            Editable = false;
        }
        field(8; "Min. rating"; Decimal)
        {
            Caption = 'Min. rating';
            FieldClass = FlowField;
            CalcFormula = min("Order Line Archive ASC".Rating where("Menu No." = field("Menu No.")));
            Editable = false;
        }
        field(9; "Max. rating"; Decimal)
        { 
            Caption = 'Max. rating';
            FieldClass = FlowField;
            CalcFormula = max("Order Line Archive ASC".Rating where("Menu No." = field("Menu No.")));
            Editable = false;
        }
        field(107; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            Editable = true;
        }
        
    }
    keys
    {
        key(PK; "Menu No.")
        {
            Clustered = true;
        }
    }
    trigger OnInsert();
    var
        MenuSetup: Record "PizzaM SetupASC";
        NoSeriesMgt: Codeunit NoSeriesManagement;
    begin
        if "Menu No." = '' then begin
            MenuSetup.Get();
            MenuSetup.TestField("Menu No.Series");
            NoSeriesMgt.InitSeries(MenuSetup."Menu No.Series", xRec."No. Series", 0D, "Menu No.", "No. Series");
        end;
    end;
}
