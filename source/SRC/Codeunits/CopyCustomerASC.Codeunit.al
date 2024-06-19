codeunit 50002 "Copy Customer ASC"
// {


//     trigger OnRun()
//     var

//         CustomerRec: Record Customer;
//         CustomerFilterRec: Record Customer;
//         MyDialog:


//     begin
//         CustomerRec.Init();
//         CustomerFilterRec.SetFilter(Name, 'M*');
//         CustomerRec."No." := '1120';
//         CustomerRec.SystemId := '{B6666666-F5A2-E911-8180-001DD8B7338E}';

//         if CustomerRec.Insert(true, true) then
//             repeat




//             until

//     end;
// }

{

    trigger OnRun()
    var
        CustomerFilterRec: Record Customer;
        CustomerRec: Record Customer;
        CustomerCount: Integer;
        AdressCount: Integer;
        MyDialog: Dialog;
        Text000: Label 'Datensatz #1 \von #2';

    begin
        
        CustomerFilterRec.SetRange(CopiedASC, false);
        // CustomerFilterRec.DeleteAll();
        CustomerFilterRec.SetFilter(Name, 'M*');
        CustomerCount := CustomerFilterRec.Count();
        MyDialog.Open(Text000, AdressCount, CustomerCount);

        if CustomerFilterRec.FindSet() then
            repeat

                AdressCount += 1;
                // CustomerRec := CustomerFilterRec;
                CustomerRec.Init();
                CustomerRec.TransferFields(CustomerFilterRec);
                CustomerRec.CopiedASC := true;
                CustomerRec."No." := '';
                CustomerRec.Insert(true);
               
                MyDialog.Update();

            until CustomerFilterRec.Next() = 0;
        Message('No. Modified');
        MyDialog.Close();



    end;
}
