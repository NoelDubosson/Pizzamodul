page 50006 "Order Header l. PizzaM ASC"
{
    ApplicationArea = All;
    Caption = 'Pizza Orders';
    PageType = List;
    SourceTable = "Order Header Pizzamodul ASC";
    CardPageId = "Order Header cc Pizzamodul ASC";
    UsageCategory = "Lists";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field.';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field("Address No."; Rec."Address No.")
                {
                    ToolTip = 'Specifies the value of the Address No. field.';
                }
                field(City; Rec.City)
                {
                    ToolTip = 'Specifies the value of the City field.';
                }
                field("Order Date"; Rec."Order Date")
                {
                    ToolTip = 'Specifies the value of the Order Date field.';
                }
                // field("Number of open orders"; Rec."Number of open orders")
                // {
                //     ToolTip = 'Specifies the value of the Number of open orders field.';
                // }
                // field("Number of archived orders"; Rec."Number of archived orders")
                // {
                //     ToolTip = 'Specifies the value of the Number of archived orders field.';
                // }
                // field("Number of ratings"; Rec."Number of ratings")
                // {
                //     ToolTip = 'Specifies the value of the Number of ratings field.';
                // }
                // field("Average rating"; Rec."Average rating")
                // {
                //     ToolTip = 'Specifies the value of the Average rating field.';
                // }
                // field("Min. Rating"; Rec."Min. Rating")
                // {
                //     ToolTip = 'Specifies the value of the Min. Rating field.';
                // }
                // field("Max. rating"; Rec."Max. rating")
                // {
                //     ToolTip = 'Specifies the value of the Max. Rating field.';
                // }
                field("E-Mail"; Rec."E-Mail")
                {
                    ToolTip = 'Specifies the value of the E-Mail field.';
                }
                field(Restaurant; Rec.Restaurant)
                {
                    ToolTip = 'Specifies the value of the Name des Restaurants field.';
                }
                field(Adresse; Rec.Adresse)
                {
                    ToolTip = 'Specifies the value of the Adresse field.';
                }


            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(SaveReportasHTMl)
            {
                ApplicationArea = All;
                Caption = 'SaveReportHTML';
                Image = SendMail;
                ToolTip = 'Saves Document as HTMl File';

                trigger OnAction()
                begin
                    ReportInstance.SaveAsHtml(ReportPath);
                end;
            }
        }
    }

    var
        ReportInstance: Report ReportPZM3ASC;
        ReportPath: Text;

}
