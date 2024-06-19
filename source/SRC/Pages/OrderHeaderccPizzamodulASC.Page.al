page 50007 "Order Header cc Pizzamodul ASC"
{
    ApplicationArea = All;
    Caption = 'Pizza Order';
    PageType = Card;
    SourceTable = "Order Header Pizzamodul ASC";
    

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';


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
            group(Menu)
            {
                part("SubPage PizzaM ASC"; "SubPage PizzaM ASC")
                {
                    SubPageLink = "Order No." = field("No.");
                }
            }
        }
             area(FactBoxes)
        {
             part(MyPart0; "FactBox Menu ASC")
            {
                Provider = "SubPage PizzaM ASC";
                ApplicationArea = All;
                SubPageLink = "Menu No." = field("Menu No.");
            }
         
        }
    }
    actions
    {
        area(Processing)
        {
            action(CreateAndSendMassage)
            {
                ApplicationArea = All;
                Caption = 'Create and send Message';
                Image = SendMail;
                ToolTip = 'Executes the Create and send Message action.';

                trigger OnAction()
                var
                    TempMail: Record "Email Item";
                    EmailScenario: Enum "Email Scenario";
                begin
                    TempMail.Init();
                    TempMail."From Address" := 'samuel.schreiber@aproda.ch';
                    TempMail."Send to" := 'noel.dubosson@aproda.ch';
                    TempMail."Send CC" := 'samuel.schreiber@aproda.ch';
                    TempMail.Send(false, EmailScenario::"Customer Statement");
                end;
            }

            action("Archive Header")
            {
                ApplicationArea = All;
                Image = Archive;
                ToolTip = 'Executes the Archive action.';
                trigger OnAction()
                var
                    TempMail: Record "Email Item";
                    ArchiveHeader: Record "Order Header Archive ASC";
                    EmailScenario: Enum "Email Scenario";
                    Outstr: OutStream;
                    Codeunit1: Codeunit ArchivFunktionenASC;

                begin
                    ArchiveHeader := Codeunit1.CopyRows(Rec);

                    TempMail.Init();
                    TempMail."From Address" := 'samuel.schreiber@aproda.ch';
                    TempMail."Send to" := 'noel.dubosson@aproda.ch';
                    TempMail."Send CC" := 'samuel.schreiber@aproda.ch';
                    
                    TempMail.Body.CreateOutStream(Outstr);
                    Outstr.WriteText(GetUrl(CurrentClientType, CompanyName, ObjectType::Page, Page::KomfortFeaturesPMASC, ArchiveHeader));
                    TempMail.Send(false, EmailScenario::"Customer Statement");
                end;

                
            }
        }
    }
}
