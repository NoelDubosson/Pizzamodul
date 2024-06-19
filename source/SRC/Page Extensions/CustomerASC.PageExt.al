pageextension 50000 "Customer ASC" extends "Customer List"
{
    Caption = 'Customer';

    layout
    {
        addlast(Control1)
        {

            field(CopiedASC; Rec.CopiedASC)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Customer field.';
            }
        }
    }

    actions
    {
        addlast(processing)
        {
            action("Copy AdressASC")
            {
                ApplicationArea = All;
                RunObject = codeunit "Copy Customer ASC";
                ToolTip = 'Copy Data';
                Image = Placeholder;
            }
            action("Delete Copied Adress 1ASC")
            {
                ApplicationArea = All;
                RunObject = codeunit "Delete Copied Adress 1 ASC";
                ToolTip = 'Delete Copied Adress 1 ASC';
                Image = Placeholder;
            }
            action(CustomerExportASC)
            {
                ApplicationArea = All;
                RunObject = xmlport "CustomerExport ASC";
                ToolTip = 'Customer ExportASC';
                Image = Placeholder;
            }
             action("Delete Copied Adress 2ASC")
            {
                ApplicationArea = All;
                RunObject = codeunit "Delete Copied Adress 2 ASC";
                ToolTip = 'Delete Copied Adress 2 ASC';
                Image = Placeholder;
            }
        }
    }
}

