table 50001 "Postal Code ASC"
{
    Caption = 'Postal Code';
    DataClassification = CustomerContent;


    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            
        }
        field(2; City; Text[30])
        {
            Caption = 'City';
        }
        field(3; County; Text[30])
        {
            Caption = 'County';
        }
    }
    keys
    {
        key(PK; Code, City)
        {
            Clustered = true;
        }
    }

}
