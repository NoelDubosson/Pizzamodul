codeunit 50007 ArchivFunktionenASC
{
    TableNo = "Order Header Archive ASC";

    trigger OnRun()
    begin
    end;

    procedure CopyRows(OrderHeader: Record "Order Header Pizzamodul ASC") ArchiveHeader: Record "Order Header Archive ASC";

    var
        // toTable: Record "Order Header Archive ASC";
        ArchiveLine: Record "Order Line Archive ASC";
        OrderLine: Record "Order Line Pizzamodul ASC";
        OrderLinePZ: Record "Order Line Archive ASC";
        // Rec: Record "Order Header Pizzamodul ASC";
        OrderSetup: Record "PizzaM SetupASC";
        NoSeriesMgt: Codeunit NoSeriesManagement;
    begin
        

        ArchiveHeader.Init();
        ArchiveHeader.TransferFields(OrderHeader);
        ArchiveHeader.Insert(true);

        OrderLine.SetFilter("Order No.", OrderHeader."No.");
        OrderLinePZ.SetFilter("Order No.", ArchiveHeader."No.");

        if OrderLine.FindSet() then
            repeat

                ArchiveLine.Init();
                ArchiveLine.TransferFields(OrderLine);
                OrderLinePZ.SetCurrentKey("Line No.");
                OrderLinePZ.Ascending(true);
                if OrderLinePZ.FindLast() then
                    ArchiveLine."Line No." := OrderLinePZ."Line No." + 10000
                else
                    ArchiveLine."Line No." := 10000;
                ArchiveLine.Insert();
                OrderLine.Delete();

            until OrderLine.Next() = 0;


        OrderHeader.Delete(true);
        
    end;

    procedure CopyRows2()

    var
        OrderHeader: Record "Order Header Pizzamodul ASC";
        Line: Record "Order Line Pizzamodul ASC";
        reco2: Record "Order Line Archive ASC";
        Rec: Record "Order Header Archive ASC";

    begin
        OrderHeader.Init();
        OrderHeader.TransferFields(Rec);
        OrderHeader.Insert(true);

        if reco2.FindSet() then
            repeat
                Line.Init();
                Line.TransferFields(reco2);
                Line.Insert();
            until reco2.Next() = 0;
    end;
}
