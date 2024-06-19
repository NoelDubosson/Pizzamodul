codeunit 50004 "Delete Copied Adress 2 ASC"
{
    TableNo = Customer;

    trigger OnRun()
    var
        CustomerFilterRec: Record Customer;
    begin
        CustomerFilterRec.SetFilter(CopiedASC, '=%1', true);
        CustomerFilterRec.DeleteAll();
        Message('All copied records fot deleted.');
    end;

}
