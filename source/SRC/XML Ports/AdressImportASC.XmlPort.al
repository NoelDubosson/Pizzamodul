/// <summary>
/// XmlPort XML Port Import ASC (ID 50002).
/// </summary>
xmlport 50002 "Adress Import ASC"
{
    Caption = 'XML Port Import';
    Format = VariableText;
    Direction = Import;
    FieldSeparator = '<TAB>';
    FieldDelimiter = '<None>';
    schema
    {
        textelement(RootNodeName)
        {
            tableelement(AdressASC; "Adress ASC")
            {
                fieldelement(Adress; AdressASC.Adress)
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
                fieldelement(Number; AdressASC.Number)
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
        actions
        {
            area(processing)
            {
            }
        }
    }
}
