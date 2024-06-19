table 50011 CuePizzaMASC
{
    Caption = 'CuePizzaM';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "Quantity of Orders"; Integer)
        {
            Caption = 'Quantity of orders';
            FieldClass = FlowField;
            CalcFormula = count("Order Header Pizzamodul ASC" where(Status = const(Open)));
            Editable = false;
        }
        field(3; "Quantiy of archivated Orders"; Integer)
        {
            Caption = 'Quantity of archivated Orders';
            FieldClass = FlowField;
            CalcFormula = count("Order Header Archive ASC");
            Editable = false;
        }
        field(4; "Maximal Rating"; Decimal)
        {
            Caption = 'Maximal Rating';
            FieldClass = FlowField;
            CalcFormula = max("Order Line Archive ASC".Rating where(Rating = filter(<>0)));
            Editable = false;
        }
        field(5; "Minimal Rating"; Decimal)
        {
            Caption = 'Minimal Rating';
            FieldClass = FlowField;
            CalcFormula = min("Order Line Archive ASC".Rating where(Rating = filter(<>0)));
            Editable = false;
            
        }
        field(6; "Average Rating"; Decimal)
        {
            Caption = 'Average Rating';
            FieldClass = FlowField;
            CalcFormula = average("Order Line Archive ASC".Rating where(Rating = filter(<>0)));
            Editable = false;

        }
        
    }
    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
}
