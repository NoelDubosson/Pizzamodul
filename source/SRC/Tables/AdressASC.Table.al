/// <summary>
/// Table Adress ASC (ID 50000).
/// </summary>
table 50000 "Adress ASC"


{
    Caption = 'Adress';
    DataClassification = CustomerContent;
    

    fields
    {

        field(1; Number; Code[20])
        {
            Caption = 'Number';
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(3; "Search Name"; Text[50])
        {
            Caption = 'Search Name';
        }
        field(4; "Name 2"; Text[50])
        {
            Caption = 'Name 2 ';
        }
        field(5; Adress; Text[50])
        {
            Caption = 'Adress';
        }
        field(6; "Adress 2"; Text[50])
        {
            Caption = 'Adress 2';
        }
        field(7; "Post Code"; Code[20])
        {
            Caption = 'Post Code';
        }
        field(8; City; Text[50])
        {
            Caption = 'City';
        }
        field(9; Country; Text[50])
        {
            Caption = 'Country';
        }
        field(10; "Phone No."; Text[50])
        {
            Caption = 'Phone No.';
        }
        field(11; "Mobile Phone No."; Text[50])
        {
            Caption = 'Mobile Phone No.';
        }
        field(12; "E-Mail"; Text[50])
        {
            Caption = 'E-Mail';
        }
        field(13; "Home Page"; Text[2048])
        {
            Caption = 'Home Page';
        }
        field(14; Picture; Media)
        {
            Caption = 'Picture';
        }
        field(15; "Customer Category"; Enum "Customer Category ASC")
        {
            
        }    
    
    }
    keys
    {
        key(PK; Number)
        {
            Clustered = true;
        }
    }
}
