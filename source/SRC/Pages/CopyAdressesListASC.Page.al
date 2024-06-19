page 50004 "Copy Adresses List ASC"
{
    ApplicationArea = All;
    Caption = 'Copy Adresses List';
    PageType = List;
    SourceTable = "My Adress ASC";
    CardPageId = "Copy Adresses ASC";
    UsageCategory = Lists;
    Editable = false;

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
                field(Adress; Rec.Adress)
                {
                    ToolTip = 'Specifies the value of the Adress field.';
                }
                field(City; Rec.City)
                {
                    ToolTip = 'Specifies the value of the City field.';
                }
                field("Phone No."; Rec."Phone No.")
                {
                    ToolTip = 'Specifies the value of the Phone No. field.';
                }
                field(County; Rec.County)
                {
                    ToolTip = 'Specifies the value of the County field.';
                }
                field("Post Code"; Rec."Post Code")
                {
                    ToolTip = 'Specifies the value of the Post Code field.';
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
                field(InsertDate; Rec.InsertDate)
                {
                    ToolTip = 'Specifies the value of the InsertDate field.';
                }
                field(InsertTime; Rec.InsertTime)
                {
                    ToolTip = 'Specifies the value of the InsertTime field.';
                }
                field(InsertUserID; Rec.InsertUserID)
                {
                    ToolTip = 'Specifies the value of the InsertUserID field.';
                }
                field(ModifyDate; Rec.ModifyDate)
                {
                    ToolTip = 'Specifies the value of the Modify Date field.';
                }
                 field(ModifyTime; Rec.ModifyTime)
                {
                    ToolTip = 'Specifies the value of the Modify Time field.';
                }
                 field(ModifiedbyUserID; Rec.ModifiedbyUserID)
                {
                    ToolTip = 'Specifies the value of the Modified by UserID field.';
                }
                 field("No. Series"; Rec."No. Series")
                {
                    ToolTip = 'Specifies the value of the No. Series field.';
                }
            }
        }
    }
    actions
    {
        area(processing)
        {
            action(CopyAdresses)
            {
                ApplicationArea = All;
                ToolTip = 'Executes the Copy Adresses ASC action.';
                Image = Placeholder;
                trigger OnAction()
                var
                    CopyAdressesASC: Codeunit "Copy Adresses ASC";
                begin
                    CopyAdressesASC.CopyAdresses();

                end;
            }
        }
    }
}
