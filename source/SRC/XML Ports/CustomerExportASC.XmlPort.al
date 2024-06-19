xmlport 50004 "CustomerExport ASC"
{
    Caption = 'CustomerExport ';
    Direction = Import;
    schema
    {
        textelement(RootNodeName)
        {
            tableelement(Customer; Customer)
            {
                fieldelement(Address; Customer.Address)
                {
                }
                
                fieldelement(Name; Customer.Name)
                {
                }
                
                fieldelement(No; Customer."No.")
                {
                }
                
               
            }
        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(Processing)
            {
            }
        }
    }
}
