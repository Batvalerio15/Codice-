page 50101 "Sim Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = "Scheda Sim";
    Caption = 'SIM Card', Comment = 'ITA="Scheda Sim"';
    layout
    {
        area(Content)
        {
            group(General)
            {

                field("Activation Cost"; Rec."Activation Cost")
                {
                    Caption = 'Activation Cost', Comment = 'ITA="Costo Attivazione"';
                }
                field("Activation Date"; Rec."Activation Date")
                {
                    Caption = 'Activation Date', Comment = 'ITA="Data Attivazione"';
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    Caption = 'Customer Name', Comment = 'ITA="Nome Cliente"';
                    Editable = false;
                }
                field("Customer No."; Rec."Customer No.")
                {
                    Caption = 'Customer No.', Comment = 'ITA="Numero Cliente"';
                    TableRelation = Customer."No.";
                    LookupPageId = "Customer List";
                }
                field("Due Date"; Rec."Due Date")
                {
                    Caption = 'Due Date', Comment = 'ITA="Data Scadenza"';
                }
                field("ID Sim Card"; Rec."ID Sim Card")
                {
                    Caption = 'ID Sim Card', Comment = 'ITA="Identificativo Sim Card"';
                }
                field("Sim Type"; Rec."Sim Type")
                {
                    Caption = 'Sim Type', Comment = 'ITA="Tipo Scheda"';
                }
                field("Telefon Number"; Rec."Telefon Number")
                {
                    Caption = 'Telefon Number', Comment = 'ITA="Numero di telefono"';
                }
                field(isActive; Rec.isActive)
                {
                    Caption = 'isActive', Comment = 'ITA="Attiva"';
                }
                field("Company Name"; Rec."Company Name")
                {
                    ToolTip = 'Specifies the value of the Company Name field.', Comment = '%ITA="Nome Operatore"';
                }
                field("Company ID"; Rec."Company ID")
                {
                    ToolTip = 'Specifies the value of the Company ID field.', Comment = '%ITA="ID Operatore"';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}