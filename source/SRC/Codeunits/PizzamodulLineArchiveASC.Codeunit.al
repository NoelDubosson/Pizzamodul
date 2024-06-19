codeunit 50006 "Pizzamodul Line Archive ASC"
{
    TableNo = "Order Line Archive ASC";
    Permissions = TableData "Order Line Archive ASC" = rm;

    trigger OnRun() 
    begin
        OrderLinePZ := Rec;
        OrderLinePZ.LockTable();
        OrderLinePZ.Find();
        OrderLinePZ.Rating := Rating;
        OnBeforeOrderLinePZModify(OrderLinePZ, Rec);
        OrderLinePZ.TestField(Rating, Rating);
        OrderLinePZ.Modify();
        OrderLinePZ := Rec;
    end;

    var
     OrderLinePZ: Record "Order Line Archive ASC";

     [IntegrationEvent(false, false)]
    local procedure OnBeforeOrderLinePZModify(var OrderLinePZ: Record "Order Line Archive ASC"; FromOrderLinePZ: Record "Order Line Archive ASC")
    begin
    end;
}
