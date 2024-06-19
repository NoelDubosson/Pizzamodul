/// <summary>
/// XmlPort XML Port ASC (ID 50000).
/// </summary>
xmlport 50000 "Contact export ASC"
{
    Caption = 'XML Port';
    Format = VariableText;
    Direction = Export;
    FieldSeparator = '<TAB>';
    FieldDelimiter = '<None>';
    schema
    {
        textelement(RootNodeName)
        {
            tableelement(AdressASC; Contact)
            {
                fieldelement(Adress; AdressASC.Address)
                {
                }
                fieldelement(City; AdressASC.City)
                {
                }
                fieldelement(EMail; AdressASC."E-Mail")
                {
                }
                fieldelement(Name; AdressASC.Name)
                {
                }
                fieldelement(Number; AdressASC."No.")
                {
                }
                fieldelement(PostCode; AdressASC."Post Code")
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

    }
}