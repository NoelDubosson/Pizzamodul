table 50002 "My Adress ASC"
{
    Caption = 'My Adress';
    DataClassification = CustomerContent;


    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(3; Adress; Text[50])
        {
            Caption = 'Adress';
        }
        field(4; City; Text[50])
        {
            Caption = 'City';
        }
        field(5; "Phone No."; Text[50])
        {
            Caption = 'Phone No.';
        }
        field(6; County; Text[50])
        {
            Caption = 'County';
        }
        field(7; "Post Code"; Code[50])
        {
            Caption = 'Post Code';
        }
        field(8; "E-Mail"; Text[50])
        {
            Caption = 'E-Mail';
        }
        field(9; Picture; Media)
        {
            Caption = 'Picture';
        }
        field(10; Country; Text[50])
        {
            Caption = 'Country';
        }
        field(11; InsertDate; Date)
        {
            Caption = 'Insert Date';
        }
        field(12; InsertTime; Time)
        {
            Caption = 'Time';
        }
        field(13; InsertUserID; Code[50])
        {
            Caption = 'UserID';
        }
        field(14; ModifyDate; Date)
        {
            Caption = 'Modify Date';
        }
        field(15; ModifyTime; Time)
        {
            Caption = 'Modify Time';
        }
        field(16; ModifiedbyUserID; Text[50])
        {
            Caption = 'Modified by UserID';
        }
        field(107; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            Editable = false;
        }
        field(108; "House Number"; Text[20])
        {
            Caption = 'House Number';
        }
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
    trigger OnInsert();
    var
        SalesSetup: Record "Sales & Receivables Setup";
        NoSeriesMgt: Codeunit NoSeriesManagement;
    begin
        Rec.InsertDate := Today;
        Rec.InsertUserID := UserId;
        Rec.InsertTime := Time;
        if "No." = '' then begin
            SalesSetup.Get();
            SalesSetup.TestField("Adress NumbersASC");
            NoSeriesMgt.InitSeries(SalesSetup."Adress NumbersASC", xRec."No. Series", 0D, "No.", "No. Series");
        end;
    end;


    trigger OnModify();
    begin
        Rec.ModifyDate := Today;
        Rec.ModifyTime := Time;
        Rec.ModifiedbyUserID := UserId;
    end;

    procedure AssistEdit(OldCust: Record "My Adress ASC"): Boolean
    var
        Cust: Record "My Adress ASC";
        SalesSetup: Record "Sales & Receivables Setup";
        NoSeriesMGT: Codeunit NoSeriesManagement;
    begin
        Cust := Rec;
        SalesSetup.Get();
        SalesSetup.TestField("Customer Nos.");
        if NoSeriesMGT.SelectSeries(SalesSetup."Customer Nos.", OldCust."No. Series", "No. Series") then begin
            NoSeriesMGT.SetSeries("No.");
            Rec := Cust;
            OnAssistEditOnBeforeExit(Cust);
            exit(true);
        end;
    end;


    [IntegrationEvent(false, false)]
    local procedure OnAssistEditOnBeforeExit(Cust: Record "My Adress ASC")
    begin
    end;


    procedure MyProcedure()


    var
        Regex: Codeunit Regex;
        Length: Integer;
        PhoneNumber: Text;
        ChekPhoneNumber: Boolean;

    begin
        PhoneNumber := Rec."Phone No.";
        PhoneNumber := DelChr(PhoneNumber, '=', ' ');
        Length := StrLen(PhoneNumber);
        ChekPhoneNumber := Regex.IsMatch(PhoneNumber, '[0-9+]');


        if not ChekPhoneNumber then
            Error('Number is not valid')

        else
            case length of
                1 .. 8:
                    Error('Number is not valid');

                10 .. 13:
                    PhoneNumber := DelStr(PhoneNumber, 1, length - 9);
                14 .. 100:
                    Error('Number is not valid');
            end;

        PhoneNumber := '+41 ' + PhoneNumber;
        PhoneNumber := InsStr(PhoneNumber, ' ', 7);
        PhoneNumber := InsStr(PhoneNumber, ' ', 11);
        PhoneNumber := InsStr(PhoneNumber, ' ', 14);
        Rec."Phone No." := PhoneNumber;

    end;





}
