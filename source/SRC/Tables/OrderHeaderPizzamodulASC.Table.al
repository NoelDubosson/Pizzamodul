table 50004 "Order Header Pizzamodul ASC"
{
    Caption = 'Order Header Pizzamodul';
    DataClassification = CustomerContent;
    DrillDownPageId = "Order Header l. PizzaM ASC";

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(3; "Address No."; Code[20])
        {
            Caption = 'Address No.';
            TableRelation = "Address PizzaM ASC";

            trigger OnValidate()
            var
                Address: Record "Address PizzaM ASC";
            begin
                Address.Get("Address No.");
                Name := Address.Name;
                "City" := Address.City;
                "E-Mail" := Address."E-Mail";
            end;
        }
        field(4; City; Text[50])
        {
            Caption = 'City';
        }
        field(5; "Order Date"; Date)
        {
            Caption = 'Order Date';
        }
                         
                         
        field(9; "Average rating"; Decimal)
        {
            Caption = 'Average rating';
            FieldClass = FlowField;
            CalcFormula = average("Order Line Archive ASC".Rating where("Order No." = field("No."), Rating = filter(<> 0)));
            Editable = false;
        }
        field(10; "Min. Rating"; Decimal)
        {
            Caption = 'Min. Rating';
            FieldClass = FlowField;
            CalcFormula = min("Order Line Archive ASC".Rating where("Order No." = field("No.")));
            Editable = false;
        }
        field(11; "Max. rating"; Decimal)
        {
            Caption = 'Max. Rating';
            FieldClass = FlowField;
            CalcFormula = max("Order Line Archive ASC".Rating where("Order No." = field("No.")));
            Editable = false;
        }
        field(12; "E-Mail"; Text[25])
        {
            Caption = 'E-Mail';
        }
        field(107; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            Editable = true;
        }
        field(13; "Calculated Price"; Decimal)
        {
            Caption = 'CalculatedPrice';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = sum("Order Line Pizzamodul ASC"."Total Price" where("Order No." = field("No.")));
        }
        field(14; Restaurant; Text[25])
        {
            Caption = 'Name des Restaurants';
            Editable = True;
        }
         field(15; NameLiferant; Text[50])
        {
            Caption = 'Name';
        }
        field(16; Adresse; Text[50])
        {
            Caption = 'Adresse';
        }
        field(17; "E-MailL"; Code[20])
        {
            Caption = 'E-Mail';
        }
           field(18; Status; Enum "Sales Document Status")
        {
            Caption = 'Status';
            Editable = false;
        }
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
    trigger OnInsert();
    var
        OrderSetup: Record "PizzaM SetupASC";
        NoSeriesMgt: Codeunit NoSeriesManagement;
    begin
        if "No." = '' then begin
            Rec."Order Date" := Today;
            OrderSetup.Get();
            OrderSetup.TestField("Order No.Series");
            NoSeriesMgt.InitSeries(OrderSetup."Order No.Series", xRec."No. Series", 0D, "No.", "No. Series");
        end;
    end;
    trigger OnDelete()
    var
    OrderLine: Record "Order Line Pizzamodul ASC";
    begin
        SetRange("No.");
        OrderLine.DeleteAll();
    end;
    // procedure CopyRows()
   
    // var
    //     toTable: Record "Order Header Archive ASC";
    //     // Proced: Record "Order Line Pizzamodul ASC";
    //     "Line Archiv": Record "Order Line Archive ASC";
    //     reco: Record "Order Line Pizzamodul ASC";
    //     OrderLinePZ: Record "Order Line Archive ASC";
    // begin
    //     // Proced.ArchivLine();
    //     reco.SetRange("Order No.", reco."Order No.");

    //     toTable.Init();
    //     toTable.TransferFields(Rec);
    //     toTable.Insert();
        

    //     if reco.FindSet() then
    //         repeat

    //             "Line Archiv".Init();
    //             "Line Archiv".TransferFields(reco);
    //             OrderLinePZ.SetCurrentKey("Line No.");
    //             OrderLinePZ.Ascending(true);
    //             if OrderLinePZ.FindLast() then
    //                 "Line Archiv"."Line No." := OrderLinePZ."Line No." + 10000
    //             else
    //                 "Line Archiv"."Line No." := 10000;
    //             "Line Archiv".Insert();
                

    //         until reco.Next() = 0;

    //         Rec.Delete(true);
    // end;
}
