page 50009 "Address PizzaM C ASC"
{
    ApplicationArea = All;
    Caption = 'Address PizzaM C';
    PageType = Card;
    SourceTable = "Address PizzaM ASC";
    
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field.';
                }
                field(City; Rec.City)
                {
                    ToolTip = 'Specifies the value of the City field.';
                      trigger OnValidate()
                    var

                        PostCodeRec: Record "Postal Code ASC";
                        CityFind: Text;

                    begin

                        CityFind := Rec.City;
                        PostCodeRec.SetFilter(City, CityFind);
                        if page.RunModal(page::"Postal Code ASC", PostCodeRec) = Action::LookupOK then
                            Rec."Post Code" := PostCodeRec.Code;
                    end;
                }
                field("Post Code"; Rec."Post Code")
                {
                    ToolTip = 'Specifies the value of the Post Code field.';
                       trigger OnValidate()
                    var

                        PostCodeRec: Record "Postal Code ASC";
                        PostCodeFind: Text;


                    begin

                        PostCodeFind := Rec."Post Code";
                        PostCodeRec.SetFilter(Code, PostCodeFind);
                        if page.RunModal(page::"Postal Code ASC", PostCodeRec) = Action::LookupOK then
                            Rec.City := PostCodeRec.City
                    end;
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
        
    }
}
