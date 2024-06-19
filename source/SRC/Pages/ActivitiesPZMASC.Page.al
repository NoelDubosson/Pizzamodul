/// <summary>
/// Page id.
/// </summary>
page 50024 ActivitiesPZMASC
{
    Caption = 'ActivitiesPZMASC';
    PageType = CardPart;
    SourceTable = "CuePizzaMASC";

    layout
    {
        area(content)
        {
            cuegroup(Pizzamodul)
            {
                Caption = 'Pizzamodul';
                field("Quantity of Orders"; "Quantity of Orders")
                {
                    ToolTip = 'Quantity of orders';
                    ApplicationArea = all;
                }
                field("Quantiy of archivated Orders"; "Quantiy of archivated Orders")
                {
                    ToolTip = 'quantity of archivated orders';
                    ApplicationArea = all;
                }
                field("Maximal Rating"; "Maximal Rating")
                {
                    ToolTip = 'Maximal Rating';
                    ApplicationArea = all;
                    // Style = Favorable;
                    StyleExpr = MYFieldStyle2;
                }
                field("Minimal Rating"; "Minimal Rating")
                {
                    ToolTip = 'Minimal Rating';
                    ApplicationArea = all;
                    // Style = MyFieldStyle
                    StyleExpr = MyFieldStyle;
                }
                field("Average Rating"; Rec."Average Rating")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Average Rating field.';
                    StyleExpr = MyFieldStyle3;
                }

            }
        }
    }
    trigger OnOpenPage()
    begin
        Rec.Reset();
        if not Rec.Get() then begin
            Rec.Init();
            Rec.Insert();
        end;
    end;

    var
    MyFieldStyle: Text;
    MYFieldStyle2: Text;
    MyFieldStyle3: Text;

    trigger OnAfterGetRecord()
    begin
        if("Minimal Rating" > 2.5) then
        MyFieldStyle := 'Favorable'
        else
            MyFieldStyle := 'Unfavorable';

        if("Average Rating" > 2.5) then
        MYFieldStyle2 := 'Favorable'
        else 
            MYFieldStyle2 := 'Unfavorable';

        if("Maximal Rating" > 2.5) then
        MyFieldStyle3 := 'Favorable'
        else 
            MyFieldStyle3 := 'Unfavorable';
    end;
    
    
    

}
