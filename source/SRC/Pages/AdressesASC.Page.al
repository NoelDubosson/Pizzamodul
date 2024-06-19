page 50000 "Adresses ASC"
{
    ApplicationArea = All;
    Caption = 'Adresses';
    PageType = List;
    SourceTable = "Adress ASC";
    CardPageId = "Adress ASC";
    UsageCategory = Lists;
    Editable = false;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Adress; Rec.Adress)
                {
                    ToolTip = 'Specifies the value of the Adress field.';
                }
                field("Adress 2"; Rec."Adress 2")
                {
                    ToolTip = 'Specifies the value of the Adress 2 field.';
                }
                field(City; Rec.City)
                {
                    ToolTip = 'Specifies the value of the City field.';
                }
                field(Country; Rec.Country)
                {
                    ToolTip = 'Specifies the value of the Country field.';
                }
                field("E-Mail"; Rec."E-Mail")
                {
                    ToolTip = 'Specifies the value of the E-Mail field.';
                }
                field("Home Page"; Rec."Home Page")
                {
                    ToolTip = 'Specifies the value of the Home Page field.';
                }
                field("Mobile Phone No."; Rec."Mobile Phone No.")
                {
                    ToolTip = 'Specifies the value of the Mobile Phone No. field.';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field("Name 2"; Rec."Name 2")
                {
                    ToolTip = 'Specifies the value of the Name 2  field.';
                }
                field(Number; Rec.Number)
                {
                    ToolTip = 'Specifies the value of the Number field.';
                }
                field("Phone No."; Rec."Phone No.")
                {
                    ToolTip = 'Specifies the value of the Phone No. field.';
                }
                field(Picture; Rec.Picture)
                {
                    ToolTip = 'Specifies the value of the Picture field.';
                }
                field("Post Code"; Rec."Post Code")
                {
                    ToolTip = 'Specifies the value of the Post Code field.';
                }
                field("Search Name"; Rec."Search Name")
                {
                    ToolTip = 'Specifies the value of the Search Name field.';
                }
                field("Customer Category"; Rec."Customer Category")
                {
                    ToolTip = 'Specifies the value of the Customer Category field.';
                }
            }
        }
    }
    actions
    {
        area(processing)
        {
            action(Import)
            {
                ApplicationArea = All;
                RunObject = xmlport "Adress Import ASC";
                ToolTip = 'Executes the XML Port Import ASC action.';
                Image = XMLFile;
            }
            action(Export)
            {
                ApplicationArea = All;
                RunObject = xmlport "Contact Export ASC";
                ToolTip = 'Executes the XML Port Import ASC action.';
                Image = XMLFile;
            }
            action(CountAdress)
            {
                ApplicationArea = All;
                RunObject = codeunit "Count Adress ASC";
                ToolTip = 'Executes the Count Adress ASC action.';
                Image = Export;
            }
            action(ModifyAdress)
            {
                ApplicationArea = All;
                RunObject = codeunit "Modify Adress ASC";
                ToolTip = 'Executes the Modify Adress ASC action.';
                Image = Placeholder;
            }
        }
    }
}
