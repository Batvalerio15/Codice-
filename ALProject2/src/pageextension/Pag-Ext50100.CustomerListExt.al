pageextension 50100 "Customer List Ext" extends "Customer List"
{
    layout
    {
        addlast(Control1)
        {
            field("Main SIM Card"; Rec."Main SIM Card")

            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
        addlast(processing)
        {
            action(shoSIMCards)
            {
                Caption = 'Show SIM Card', Comment = 'ITA="Schede Telefoniche"';
                ApplicationArea = all;
                Image = ShowList;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                RunObject = Page "SIM List";
                RunPageLink = "Customer No." = field("No.");


                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}