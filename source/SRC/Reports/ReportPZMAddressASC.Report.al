report 50001 "ReportPZMAddress ASC"
{
    ApplicationArea = All;
    Caption = 'ReportPZM Address';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = 'SRC/Reports/RDLC/ReportPZM.rdlc';
    dataset
    {
        dataitem(AddressPizzaMASC; "Address PizzaM ASC")
        {
            column(No; "No.")
            { }
            column(Name; Name)
            { }
            column(Address; Address)
            { }
            column(PostCode; "Post Code")
            { }
            column(City; City)
            { }
            column(NameLbl; NameLbl)
            { }
            column(AddressLbl; AddressLbl)
            { }
            column(PostCodeLbl; PostCodeLbl)
            { }
            column(CityLbl; CityLbl)
            { }

            dataitem("Address PizzaM ASC"; "Address PizzaM ASC")
            {
                DataItemLink = "No." = field("No.");
                column(Number_of_open_orders; "Number of open orders")
                { }
                column(Number_of_archived_orders; "Number of archived orders")
                { }
                column(Number_of_ratings; "Number of ratings")
                { }
                column(Number_of_open_orderslbl; Number_of_open_orderslbl)
                { }
                column(Number_of_archived_orderslbl; Number_of_archived_orderslbl)
                { }
                column(Number_of_ratingslbl; Number_of_ratingslbl)
                { }
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
        NameLbl: Label 'Name';
        AddressLbl: Label 'Address';
        PostCodeLbl: Label 'Post Code';
        CityLbl: Label 'City';
        Number_of_open_ordersLbl: Label 'Offene Bestellungen';
        Number_of_archived_ordersLbl: Label 'Archivierte Bestellungen';
        Number_of_ratingsLbl: Label 'Anzahl Bewertungen';

}
