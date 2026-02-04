table 50100 "Scheda SIM"
{
    DataClassification = CustomerContent;
    Caption = 'Sim Card', comment = 'ITA="Scheda Telefonica"';
    fields
    {
        field(1; "ID Sim Card"; Integer)
        {
            AutoIncrement = true;
            Caption = 'ID Sim Card', comment = 'ITA="Identificativo Sim Card"';
            DataClassification = CustomerContent;
        }

        field(2; "isActive"; Boolean)
        {
            DataClassification = CustomerContent;
            Caption = 'is Active', comment = 'ITA="Attiva"';
            InitValue = true;
        }

        field(3; "Activation Cost"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Activation Cost', comment = 'ITA="Costo Attivazione"';
        }

        field(4; "Activation Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Activation Date', comment = 'ITA="Data Attivazione"';
        }

        field(5; "Customer No."; code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Customer No.', comment = 'ITA="Numero Cliente"';
            TableRelation = Customer."No.";
            trigger OnValidate()
            var
                CustomerRec: Record Customer;
            begin
                if Rec."Customer No." <> '' then
                    CustomerRec.get(Rec."Customer No.");
            end;
        }

        field(6; "Customer Nmae"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Customer Name', comment = 'ITA="Nome Cliente"';
            TableRelation = Customer.Name where("No." = field("Customer No."));
        }

        field(7; "Due Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Due Date', comment = 'ITA="Data Scadenza"';
        }

        field(8; "Sim Type"; Enum "Sim Type")
        {
            DataClassification = CustomerContent;
            Caption = 'Sim Type', Comment = 'Ita="Tipo Scheda"';
        }
    }
    keys
    {
        key(pk; "ID Sim Card")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin
        Rec."Activation Date" := today;
    end;

    trigger OnModify()
    var
        ErrorMeassage: Label 'The Due Date cannot be  before the Activation Date.', comment = 'ITA="La Data di scadenza non può essere precedente alla Data di Attivazione"';
    begin
        if Rec."Due Date" < Rec."Activation Date" then begin
            Error(ErrorMeassage);
        end;
    end;

    trigger OnDelete()
    var
        DelateError: Label 'The SIM card record cannot be delated', comment = 'ITA="Il record della scheda SIM non può essere eliminato"';
        ConfirmMessage: Label 'Are yuou sure to delate this SIM card record?', comment = 'ITA="Cancellazione annullata';
    begin
        if not Confirm(ConfirmMessage, False) then
            Error(DelateError) else
            message(DelateMSsg)
    end;

    Var
        DelateMSsg: Label 'Operation complited', Comment = 'ITA="Operazione completata';
}



