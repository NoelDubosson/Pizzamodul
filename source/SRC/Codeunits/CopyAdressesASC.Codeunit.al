codeunit 50005 "Copy Adresses ASC"
{
        
    procedure CopyAdresses()
     var
    CustomerRec: Record Customer;
    VendorRec: Record Vendor;
    MyAdress: Record "My Adress ASC";
    
    
    MyDialog: Dialog;
    Text000Lbl: Label '#1 von #2 Datensätze von Debitoren und #3 von #4 Datensätze von Kreditoren #5 von #6 Gesamte Datensätze kopiert.';
    VendorCount: Integer;
    VendorFix: Integer;
    CustomerCount: Integer;
    CustomerFix: Integer;
    Total: Integer;
    TotalCount: Integer;

    begin
        
    //    MyAdress.DeleteAll();
         CustomerFix := CustomerRec.Count();
         VendorFix := VendorRec.Count();
         Total := VendorRec.Count() + CustomerRec.Count();
         MyDialog.Open(Text000Lbl, CustomerCount, CustomerFix, VendorCount, VendorFix, TotalCount, Total);
        if CustomerRec.FindSet() then
            repeat
            CustomerCount += 1;
            TotalCount += 1;

            MyAdress.Init();
            MyAdress.TransferFields(CustomerRec);
            MyAdress."No." := 'C' + CustomerRec."No.";
            MyAdress.Insert();

            MyDialog.Update();
            Sleep(50);

        until CustomerRec.Next() = 0;

        if VendorRec.FindSet() then
            repeat
            
            VendorCount += 1;
            TotalCount += 1;

            MyAdress.Init();
            MyAdress.TransferFields(VendorRec);
            MyAdress."No." := 'V' + VendorRec."No.";
            MyAdress.Insert();

            MyDialog.Update();
            Sleep(50);

        until VendorRec.Next() = 0;
        Message('Occurence completed');
 
    end;
}
