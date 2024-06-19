table 50006 "Order Header Archive ASC"
{
    Caption = 'Order Header Archive';
    DataClassification = CustomerContent;
    DrillDownPageId = "Pizza Orders Archive ASC";
    

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
             Editable = false;
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
             Editable = false;
        }
        field(3; "Address No."; Code[20])
        {
            Caption = 'Address No. ';
             Editable = false;
        }
        field(4; City; Text[100])
        {
            Caption = 'City';
             Editable = false;
        }
        field(5; "Order Date"; Date)
        {
            Caption = 'Order Date';
             Editable = false;
        }
        
        field(107; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            Editable = true;
        }
            field(6; "Average Rating"; Decimal)
        {
            Caption = 'Average Rating';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = average("Order Line Archive ASC".Rating where("Order No." = field("No."), Rating = filter(<>0)));
            

        }
        field(7; "E-Mail"; Text[25])
        {
            Caption = 'Text';
            Editable = false;
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
    trigger OnInsert()
    var
    PizzaMSetupASC: Record "PizzaM SetupASC";
    NoSeriesManagement: Codeunit NoSeriesManagement;
    begin
    
        begin
            PizzaMSetupASC.Get();
            PizzaMSetupASC.TestField("Archive Order No.");
            NoSeriesManagement.InitSeries(PizzaMSetupASC."Order No.Series", xRec."No. Series", 0D, "No.", "No. Series");
        end;
    end;

    // procedure CopyRows2()

    // var
    //     OrderHeader: Record "Order Header Pizzamodul ASC";
    //     Line: Record "Order Line Pizzamodul ASC";
    //     reco2: Record "Order Line Archive ASC";

    // begin
    //     OrderHeader.Init();
    //     OrderHeader.TransferFields(Rec);
    //     OrderHeader.Insert(true);

    //     if reco2.FindSet() then
    //         repeat
    //         Line.Init();
    //         Line.TransferFields(reco2);
    //         Line.Insert();
    //         until reco2.Next() = 0;
    // end;

    
}
