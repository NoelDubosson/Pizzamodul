table 50010 "PizzaM SetupASC"
{
    Caption = 'PizzaM Setup';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "Order No.Series"; Code[10])
        {
            Caption = 'Order No.Series';
            TableRelation = "No. Series";
        }
        field(3; "Menu No.Series"; Code[10])
        {
            Caption = 'Menu No. Seriea';
            TableRelation = "No. Series";
        }
        field(4; "Address No.Series"; Code[10])
        {
            Caption = 'Address No. Series';
            TableRelation = "No. Series";
        }
          field(5; "Line No.Series"; Code[10])
        {
            Caption = 'Line No. Series';
            TableRelation = "No. Series";
        }
        field(6; "Archive Order No."; Code[10])
        {
            Caption = 'Archive Order No.';
            TableRelation = "No. Series";
        }

    }
    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
}

