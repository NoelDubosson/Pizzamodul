pageextension 50001 "Sales Setup Extension ASC" extends "Sales & Receivables Setup"
{
    layout
    {
        addfirst("Number Series")
        {
            field("Address NumbersASC"; Rec."Adress NumbersASC")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Address field.';
            }
           
        }
    }
}
