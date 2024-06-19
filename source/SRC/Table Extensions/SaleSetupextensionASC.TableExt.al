tableextension 50001 "Sale Setup extension ASC" extends "Sales & Receivables Setup"
{
    fields
    {
        field(50000; "Adress NumbersASC"; Text[50])
        {
            Caption = 'Adress Numbers';
            DataClassification = CustomerContent;
            TableRelation = "No. Series";
        }
    }
}
