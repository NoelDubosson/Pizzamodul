codeunit 50000 "Count Adress ASC"
// {

//     trigger OnRun()
//     var
//         CustomerRec: Record Customer;
//         CustomerCount: Integer;



//     begin
//         Message('Test');
//         CustomerCount := CustomerRec.Count; 
//         CustomerCount := 0;
//         if CustomerRec.FindSet() then
//             repeat
//                 CustomerCount := CustomerCount + 1;
//             until CustomerRec.Next() = 0;
//         Message(Format(CustomerCount));


//     end;

// }

// {

//     trigger OnRun()
//     var


//         AdressRec: Record "Adress ASC";
//         AdressCount: Integer;


//     begin
//         AdressCount := AdressRec.Count();
//         Message(Format(AdressCount));
//     end;

// }

{
    trigger OnRun()
    var
        AdressFilterRec: Record "Adress ASC";
        AdressRec: Record "Adress ASC";
        MyDialog: Dialog;
        AdressCount: Integer;
        CurrentAdressCount: Integer;

        Text000: Label 'Datensatz #1 \von #2 \Adress Nr. #3';
        Adress: Text;

    begin

        AdressFilterRec.SetFilter(Name, 'S*');
        AdressCount := AdressRec.Count();
        MyDialog.Open(Text000, CurrentAdressCount, AdressCount, Adress);



        if AdressRec.FindSet() then
            repeat
                Sleep(500);
                Adress := AdressRec.Number;
                CurrentAdressCount += 1;
                MyDialog.Update();
            until AdressRec.Next() = 0;
        Sleep(100);
        MyDialog.Close();

    end;

}