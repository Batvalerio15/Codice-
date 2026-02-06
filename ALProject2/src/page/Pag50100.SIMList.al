page 50100 "SIM List"
{
    PageType = List;
    ApplicationArea = All;
    SourceTable = "Scheda SIM";
    Caption = 'SIM List', comment = 'ITA="Elenco Schede SIM"';
    UsageCategory = Lists;
    CardPageId = "Sim Card";

    layout
    {
        area(Content)
        {
            repeater(Controll)
            {
                field("ID Sim Card"; Rec."ID Sim Card")
                {
                    ApplicationArea = All;
                }

                field("Customer No."; Rec."Customer No.")
                {
                    ApplicationArea = All;
                }

                field("Customer Name"; Rec."Customer Name")
                {
                    ApplicationArea = All;

                }

                field("Sim Type"; Rec."Sim Type")
                {
                    ApplicationArea = All;
                }

                field(isActive; Rec.isActive)
                {
                    ApplicationArea = All;
                }

                field("Activation Date"; Rec."Activation Date")
                {
                    ApplicationArea = All;
                }

                field("Due Date"; Rec."Due Date")
                {
                    ApplicationArea = All;
                }

                field("Activation Cost"; Rec."Activation Cost")
                {
                    ApplicationArea = All;
                }


                field("Telefon Number"; Rec."Telefon Number")
                {
                    ApplicationArea = All;
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

    trigger OnOpenPage() //trigger eseguito all'apertura della pagina 
    begin
    end;

    trigger OnClosePage() //Trigger eseguito alla chiusura della pagina 
    begin
    end;


}