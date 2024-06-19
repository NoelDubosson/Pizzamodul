/// <summary>
/// XmlPort XML Port 2 ASC (ID 50001).
/// </summary>
xmlport 50001 "Export ASC"
{
    Caption = 'XML Port 2';
    Direction = Export;
    Format = Xml;
    schema
    {
        textelement(RootNodeName)
        {
            tableelement(PostalCodeASC; "Post Code")
            {
                fieldelement(Number; PostalCodeASC."Code")
                {
                }
                fieldelement(Country; PostalCodeASC.County)
                {
                }
                fieldelement(City; PostalCodeASC.City)
                {
                }
            }
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
}
