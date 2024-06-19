tableextension 50000 "Customer ASC" extends Customer
{
    fields
    {
        field(50000; CopiedASC; Boolean)
        {
            Caption = 'Copied';
            DataClassification = CustomerContent;
        }
    }
}
