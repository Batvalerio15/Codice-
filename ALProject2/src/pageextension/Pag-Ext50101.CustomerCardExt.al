pageextension 50101 "Customer Card Ext" extends "Customer Card"
{
    layout
    {
        addlast(General)
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