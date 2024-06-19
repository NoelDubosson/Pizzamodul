codeunit 50003 "Delete Copied Adress 1 ASC"
{
    TableNo = Customer;

    trigger OnRun()
    var
        CustomerFilterRec: Record Customer;
    begin

        Message('All copied records got deleted.');

        if CustomerFilterRec.FindSet() then
            repeat

                CustomerFilterRec.SetRange(CopiedASC, true);
                CustomerFilterRec.Delete()
            
            
            until CustomerFilterRec.Next() = 0;
        
    
          

        
        

    end;

}
