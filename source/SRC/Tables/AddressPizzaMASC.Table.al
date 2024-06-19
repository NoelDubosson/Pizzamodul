table 50008 "Address PizzaM ASC"
{
    Caption = 'Address PizzaM';
    DataClassification = CustomerContent;
    DrillDownPageId = "Address PizzaM l ASC";
    
    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            
            
        }
        field(2; City; Text[50])
        {
            Caption = 'City';
        }
        field(3; "Post Code"; Code[20])
        {
            Caption = 'Post Code';
        }
        field(4; Address; Text[50])
        {
            Caption = 'Address';
        }
        field(5; "E-Mail"; Text[50])
        {
            Caption = 'E-Mail';
        }
        field(6; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(7; "Phone Number"; Text[50])
        {
            Caption = 'Phone Number';
              trigger OnValidate();
                    begin
                        rec.MyProcedure();
                    end;
            
        }
          field(107; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            Editable = true;
        }
         field(8; "Number of open orders"; Integer)
        {
            Caption = 'Number of open orders';
            FieldClass = FlowField;
            CalcFormula = count("Order Header Pizzamodul ASC" where("Address No." = field("No.")));
            Editable = false;
        }
        field(9; "Number of archived orders"; Integer)
        {
            Caption = 'Number of archived orders';
            FieldClass = FlowField;
            CalcFormula = count("Order Header Archive ASC" where("Address No." = field("No.")));
            Editable = false;
        }
        field(10; "Number of ratings"; Integer)
        {
            Caption = 'Number of ratings';
            FieldClass = FlowField;
            CalcFormula = count("Order Line Archive ASC" where("Menu No." = field("No."), Rating = filter(<>0)));
            Editable = false;
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
        AddressSetup: Record "PizzaM SetupASC";
        NoSeriesMgt: Codeunit NoSeriesManagement;
    begin
        if "No." = '' then begin
            AddressSetup.Get();
            AddressSetup.TestField("Address No.Series");
            NoSeriesMgt.InitSeries(AddressSetup."Address No.Series", xRec."No. Series", 0D, "No.", "No. Series");
        end;
    end;

     procedure MyProcedure()


    var
        Regex: Codeunit Regex;
        Length: Integer;
        PhoneNumber: Text;
        ChekPhoneNumber: Boolean; 

    begin
        PhoneNumber := Rec."Phone Number";
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
        Rec."Phone Number" := PhoneNumber;

    end;
}
