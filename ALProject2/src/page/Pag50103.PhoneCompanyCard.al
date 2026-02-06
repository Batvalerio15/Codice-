page 50103 "Phone Company Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = "Phone Company";

    layout
    {
        area(Content)
        {
            group(GroupName)
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
                    ToolTip = 'Specifies the value of the Name field.', Comment = 'ITA="Nome"';
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