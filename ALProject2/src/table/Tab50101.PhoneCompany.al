table 50101 "Phone Company"
{
    DataClassification = CustomerContent;
    Caption = 'Phone Company', comment = 'ITA="Gestore Telefonico"';

    fields
    {
        field(1; "Entry Number"; Integer)
        {
            AutoIncrement = true;
            DataClassification = CustomerContent;
            Caption = 'Entry Number', comment = 'ITA="Nr. Movimento"';
        }

        field(2; Type; Enum "Type")
        {
            DataClassification = CustomerContent;
            Caption = 'Type', comment = 'ITA="Tipo Operatore"';
        }

        field(3; "Users Numbers"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'User Nubers', comment = 'ITA="Numero Utenze"';
        }

        field(4; "Exspired SIM Card"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Exspired SIM Card', comment = 'ITA="SIM Card Scadute"';
            Editable = false;

        }

        field(5; Name; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Name', comment = 'ITA="Nome operatore"';
        }



    }




    keys
    {
        key(pk; "Entry Number")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}