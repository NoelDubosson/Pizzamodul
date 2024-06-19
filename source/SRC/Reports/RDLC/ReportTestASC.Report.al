report 50000 "ReportTest ASC"
{
    ApplicationArea = All;
    Caption = 'ReportTest';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = 'SRC/Reports/RDLC/ReportTestASC.rdlc';
    dataset
    {
        dataitem("Sales Header"; "Sales Header")
        {

            column(DocumentType_SalesHeader; "Document Type")
            { }


            column(No_SalesHeader; "No.")
            { }


            column(SellToCustomerNo_SalesHeader; "Sell-to Customer No.")
            { }


            column(OrderDate_SalesHeader; Format("Order Date"))
            { }

            column(Amount_SalesHeader; "Amount")
            { }

            column(EMail_Customer; Customer."E-Mail")
            { }

            column(DocumentTypeCaptionLbl; DocumentTypeCaptionLbl)
            { }

            column(NoCaptionLbl; NoCaptionLbl)
            { }

            column(SelltoCustomerNoCaptionLbl; SelltoCustomerNoCaptionLbl)
            { }

            column(OrderDateCaptionLbl; OrderDateCaptionLbl)
            { }

            column(AmountCaptionLbl; AmountCaptionLbl)
            { }

            column(CustEMailCaption; CustEmailCaptionLbl)
            { }

            column(Picture_CompanyInformation; CompanyInformation.Picture)
            { }

            column(PrintCompanyLogo; PrintCompanyLogo)
            { }
            



            dataitem("Sales Line";"Sales Line")
            {
                DataItemLink = "Document No." = field("No.");
                column(Type_SalesLine; Type)
                { }
                column(No_SalesLine; "No.")
                { }
                column(Description_SalesLine; Description)
                { }
                column(Quantity_SalesLine; Quantity)
                { }
                column(UnitPrice_SalesLine; "Unit Price")
                { }
                column(LineAmount_SalesLine; "Line Amount")
                { }
                column(TypeCaption; DocumentTypeCaptionLbl)
                { }
                column(DescriptionCaption; DescriptionCaptionLbl)
                { }
                column(QuantityCaption; QuantityCaptionLbl)
                { }
                column(UnitPriceCaption; UnitPriceCaptionLbl)
                { }
                column(LineAmountCaption; LineAmountCaptionLbl)
                { }
                column(NoSalesLineCaption; NoSalesLineCaptionLbl)
                { }
            }

            trigger OnAfterGetRecord()
            begin
                if Customer.Get("Sales Header"."Sell-to Customer No.") then;
            end;

            
        }
       
    }


    requestpage
    {
        layout
        {
            area(content)
            {
                group(Options)
                {
                    Caption = 'Options';

                    field(PrintCompanyLogo;PrintCompanyLogo)
                    {
                        Caption = 'Print Company Logo';
                        ApplicationArea = All;
                    }
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
    trigger OnInitReport()
    begin
        PrintCompanyLogo := true;
    end;

    trigger OnPreReport()
    begin
        CompanyInformation.Get();
        CompanyInformation.CalcFields(Picture);
    end;
     

        var
        Customer: Record Customer;
        CompanyInformation: Record "Company Information";
        PrintCompanyLogo: Boolean;
        DocumentTypeCaptionLbl: Label 'Document Type';
        NoCaptionLbl: Label 'Number';
        SelltoCustomerNoCaptionLbl: Label 'Customer No.';
        OrderDateCaptionLbl: Label 'Order Date';
        AmountCaptionLbl: Label 'Amount';
        CustEMailCaptionLbl: Label 'E-Mail';
        CustomerEMail: Text[80];
        DescriptionCaptionLbl: Label 'Description';
        QuantityCaptionLbl: Label 'Quantity';
        UnitPriceCaptionLbl: Label 'Unit Price';
        LineAmountCaptionLbl: Label 'Line Amount';
        NoSalesLineCaptionLbl: Label 'No. Sales Line';
        
   
        
        
        
        
        
}
