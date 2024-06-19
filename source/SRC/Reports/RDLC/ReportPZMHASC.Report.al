report 50002 "ReportPZMH ASC"
{
    ApplicationArea = All;
    Caption = 'ReportPZMH';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = 'SRC/Reports/RDLC/ReportPZMH.rdlc';
    dataset
    {
        dataitem(OrderHeaderPizzamodulASC; "Order Header Pizzamodul ASC")
        {
            column(No; "No.")
            { }
            column(Name; Name)
            { }
            column(AddressNo; "Address No.")
            { }
            column(AdressNoLbl; AdressNoLbl)
            { }
            column(NoLbl; NoLbl)
            { }
            column(NameLbl; NameLbl)
            { }
            column(NameMLbl2; NameMLbl2)
            { }
            column(CalculatedPriceLbl; CalculatedPriceLbl)
            { }
            column(Calculated_Price; "Calculated Price")
            { }
        

            dataitem("Order Line Pizzamodul ASC"; "Order Line Pizzamodul ASC")
            {
                DataItemLink = "Order No." = field("No.");
                column(Quantity; Quantity)
                { }
                column(Unit_Price; "Unit Price")
                { }
                column(Total_Price; "Total Price")
                { }
                column(QuantityLbl; QuantityLbl)
                { }
                column(UnitPriceLbl; UnitPriceLbl)
                { }
                column(TotalPriceLbl; TotalPriceLbl)
                { }
                column(NameM; Menu.NameM)
                { }
                
                
                trigger OnAfterGetRecord()
            begin
                if Menu.Get("Order Line Pizzamodul ASC"."Menu No.") then;
            end;

            }

            


        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }

    var
        Menu: Record "Menu PizzaM ASC";
        NoLbl: Label 'No.';
        NameLbl: Label 'Name';
        AdressNoLbl: Label 'Adress No';
        NameMLbl2: Label 'Name des Menus';
        QuantityLbl: Label 'Quantity';
        UnitPriceLbl: Label 'Stückpreis';
        TotalPriceLbl: Label 'Totalpreis';
        CalculatedPriceLbl: Label 'Endbetrag';

        
}
