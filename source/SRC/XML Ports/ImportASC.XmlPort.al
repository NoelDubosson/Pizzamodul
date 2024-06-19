/// <summary>
/// XmlPort XML Port Export ASC (ID 50003).
/// </summary>
xmlport 50003 "Import ASC"
{
    Caption = 'Import ASC';
    Direction = Import;
    Format = Xml;
    schema
    {
        textelement(RootNodeName)
        {
            tableelement(PostalCodeASC; "Postal Code ASC")
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
