pageextension 50010 InvoiceReport extends 132
{

    actions
    {
        addafter(Email)
        {
            action("GST Invoice")
            {
                Image = Invoice;
                ApplicationArea = All;

                trigger OnAction()
                begin
                    tSalesInv.GET(Rec."No.");
                    REPORT.RunModal(50017, true, false, tSalesInv);
                end;

            }
        }

        // Add changes to page actions here
    }

    var
        myInt: Integer;
        rInvoice: Report 50017;
        tSalesInv: Record 112;
}
