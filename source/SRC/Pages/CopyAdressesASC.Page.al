page 50003 "Copy Adresses ASC"
{
    ApplicationArea = All;
    Caption = 'Copy Adresses';
    PageType = Card;
    SourceTable = "My Adress ASC";


    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    Importance = Standard;
                    ToolTip = 'Specifies the value of the Address field.';

                    trigger OnAssistEdit()
                    begin
                        if Rec.AssistEdit(xRec) then
                            CurrPage.Update();
                    end;
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field(Adress; Rec.Adress)
                {
                    ToolTip = 'Specifies the value of the Adress field.';
                    trigger OnValidate()
                    var
                        HouseNumber: Text;
                        Street: Text;
                        Position: Integer;
                    begin
                        HouseNumber := Rec.Adress;
                        Street := Rec.Adress;
                        Street := DelChr(HouseNumber, '=', '[1234567890]');

                        Rec.Adress := CopyStr(HouseNumber, 1, MaxStrLen(Rec.Adress));
                        HouseNumber := DelChr(HouseNumber, '=', '[ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyzöäèüàé]');

                        Rec."House Number" := CopyStr(HouseNumber, 1, MaxStrLen(Rec."House Number"));
                        Rec.Adress := CopyStr(DelChr(Street, '=', '[1234567890]'), 1, MaxStrLen(Rec.Adress));
                        Position := StrPos(Rec.Adress, 'strasse');

                        // Rec.Adress := DelChr(Rec.Adress, '>', 'strasse ');
                        Rec.Adress := DelStr(Rec.Adress, Position, Position + 7);
                        Rec.Adress := Rec.Adress + 'str.';


                    end;
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
                field("Phone No."; Rec."Phone No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Phone No. field.';

                    trigger OnValidate();
                    begin
                        rec.MyProcedure();
                    end;



                }
                field(County; Rec.County)
                {
                    ToolTip = 'Specifies the value of the County field.';
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
                field("E-Mail"; Rec."E-Mail")
                {
                    ToolTip = 'Specifies the value of the E-Mail field.';
                }
                field(Picture; Rec.Picture)
                {
                    ToolTip = 'Specifies the value of the Picture field.';
                }
                field(Country; Rec.Country)
                {
                    ToolTip = 'Specifies the value of the Country field.';
                }
                field("House Number"; Rec."House Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the House Number field.';
                    // trigger OnValidate();
                    // var
                    //     HouseNumber: Text;


                    // begin
                    // end;
                }
            }
            group(Remarks)
            {
                part("ListPart Remark ASC"; "ListPart Remark ASC")
                {
                    // Filter on the sales orders that relate to the customer in the card page.
                    SubPageLink = "Information about the customer/vendor" = field("No.");
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(CopyAdresses)
            {
                ApplicationArea = All;
                Image = Placeholder;
                RunObject = codeunit "Copy Adresses ASC";
                ToolTip = 'Executes the Copy Adresses ASC action.';
            }
        }
    }
}
