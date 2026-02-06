tableextension 50100 "Customer Exstention" extends Customer
{
    fields
    {
        field(50100; "Main SIM Card"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Main SIM Card', comment = 'ITA="Scheda SIM Principale"';
            TableRelation = "Scheda SIM"."ID Sim Card";

        }
    }


}