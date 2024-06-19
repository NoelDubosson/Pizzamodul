page 50010 "Address PizzaM l ASC"
{
    ApplicationArea = All;
    Caption = 'Address PizzaM l';
    PageType = List;
    SourceTable = "Address PizzaM ASC";
    UsageCategory = Lists;
    CardPageId = "Address PizzaM C ASC";
    
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
                field(City; Rec.City)
                {
                    ToolTip = 'Specifies the value of the City field.';
                }
                field("Post Code"; Rec."Post Code")
                {
                    ToolTip = 'Specifies the value of the Post Code field.';
                }
                field(Address; Rec.Address)
                {
                    ToolTip = 'Specifies the value of the Address field.';
                }
                field("E-Mail"; Rec."E-Mail")
                {
                    ToolTip = 'Specifies the value of the E-Mail field.';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field("Phone Number"; Rec."Phone Number")
                {
                    ToolTip = 'Specifies the value of the Phone Number field.'; 
                }
            }
        }

              area(FactBoxes)
        {
             part(MyPart; "FactBoxAddressASC")
            {
                
                ApplicationArea = All;
                SubPageLink = "No." = field("No.");
            }
         
        }
    }
}
