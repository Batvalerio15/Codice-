page 50102 "Phone Company List"
{
    PageType = List;
    ApplicationArea = All;
    SourceTable = "Phone Company";
    UsageCategory = Lists;
    CardPageId = "Phone Company Card";
    Caption = 'Phone Company List', Comment = 'ITA="Elenco Operatori Telefonici"';

    layout
    {
        area(Content)
        {
            repeater(Control)
            {
                field("Entry Number"; Rec."Entry Number")
                {
                    ToolTip = 'Specifies the value of the Entry Number field.', Comment = 'ITA="Nr. Movimento"';
                }
                field("Exspired SIM Card"; Rec."Exspired SIM Card")
                {
                    ToolTip = 'Specifies the value of the Exspired SIM Card field.', Comment = 'ITA="SIM Card Scadute"';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.', Comment = 'ITA="Nome Operatore"';
                }
                field("Type"; Rec."Type")
                {
                    ToolTip = 'Specifies the value of the Type field.', Comment = 'ITA="Tipo Operatore"';
                }
                field("Users Numbers"; Rec."Users Numbers")
                {
                    ToolTip = 'Specifies the value of the User Nubers field.', Comment = '%ITA="Numero Utenze"';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Open SIM List")
            {
                Caption = 'Open SIM List', Comment = 'ITA="Apri lista SIM"';
                ApplicationArea = all;
                Image = ShowList;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                RunObject = page "Sim List";
                RunPageLink = "Company ID" = Field("Entry Number");
            }
        }
    }

    var
        myInt: Integer;
}