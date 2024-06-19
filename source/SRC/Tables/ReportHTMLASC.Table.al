table 50012 "ReportHTMLASC"
{
    Caption = 'ReportHTML';
    DataClassification = CustomerContent;
    
    fields
    {
        field(1; ToAddress; Text[50])
        {
            Caption = 'ToAddress';
        }
        field(2; FromAddress; Text[50])
        {
            Caption = 'FromAddress';
        }
        field(3; Subject; Text[50])
        {
            Caption = 'Subject';
        }
        field(4; HtmlBodyFilePath; Text[50])
        {
            Caption = 'HtmlBodyFilePath';
        }

    
    }
    keys
    {
        key(PK; ToAddress)
        {
            Clustered = true;
        }
    }

    
}
