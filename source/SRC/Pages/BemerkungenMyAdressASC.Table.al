table 50003 "Bemerkungen My Adress ASC"
{
    Caption = 'Bemerkungen My Adress';
    DataClassification = CustomerContent;
    
    fields
    {
        field(1; "No."; Integer)
        {
            Caption = 'No.';
        }
        field(2; "Information about the customer/vendor"; Text[50])
        {
            Caption = 'Information about the customer/vendor';
        }
        field(3; "Name of the owner"; Text[50])
        {
            Caption = 'Name of the owner';
        }
        field(4; Amount; Text[50])
        {
            Caption = 'Amount';
        }
        field(5; "Other remarks"; Text[50])
        {
            Caption = 'Other remarks';
        }
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
}
