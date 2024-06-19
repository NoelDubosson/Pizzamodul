page 50013 "PizzaM Setup ASC"
{
    ApplicationArea = All;
    Caption = 'PizzaM Setup';
    PageType = Card;
    SourceTable = "PizzaM SetupASC";
    UsageCategory = Administration;
    
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                
                field("Primary Key"; Rec."Primary Key")
                {
                    ToolTip = 'Specifies the value of the Code field.';
                }
                field("Order No.Series"; Rec."Order No.Series")
                {
                    ToolTip = 'Specifies the value of the Order Header No.Series field.';
                }
                field("Menu No.Series"; Rec."Menu No.Series")
                {
                    ToolTip = 'Specifies the value of the Start No. field.';
                }
                field("Address No.Series"; Rec."Address No.Series")
                {
                    ToolTip = 'Specifies the value of the End No. field.';
                }
                 field("Line No.Series"; Rec."Line No.Series")
                {
                    ToolTip = 'Specifies the value of the End No. field.';
                }
                field("Archive Order No."; Rec."Archive Order No.")
                {
                    ToolTip = 'Specifies the value of the Archive Order No. field.';
                }
                
            }
            
        }
    }
        trigger OnOpenPage()
    var

    begin
        Rec.Reset();
        if not Rec.Get() then begin
            Rec.Init();
            Rec.Insert();
        end;
    end;
}
