codeunit 50001 "Modify Adress ASC"
// {
//     TableNo = "Adress ASC";

//     trigger OnRun()
//     var
//         AdressFilterRec: Record "Adress ASC";
//     begin

//         AdressFilterRec.SetFilter("Post Code", '8*');

//         if AdressFilterRec.FindSet() then
//             repeat

//                 AdressFilterRec."Customer Category" := AdressFilterRec."Customer Category"::A;
//                 AdressFilterRec.Modify();

//             until AdressFilterRec.Next() = 0;
//         Message('Task successfully executed');
//     end;

// }

{
    TableNo = "Adress ASC";

    trigger OnRun()
    var
        AdressFilterRec: Record "Adress ASC";
    begin

        AdressFilterRec.SetFilter("Post Code", '8*');

        if AdressFilterRec.FindSet() then
            repeat

                AdressFilterRec."Customer Category" := AdressFilterRec."Customer Category"::A;
                AdressFilterRec.Modify();

            until AdressFilterRec.Next() = 0;
        Message('Task successfully executed');
    end;

}
