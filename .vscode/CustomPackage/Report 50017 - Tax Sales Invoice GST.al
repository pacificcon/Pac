report 50017 "Tax Sales Invoice GST"
{
    ApplicationArea = all;
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = 'Reports/Tax Sales Invoice GST.rdl';

    dataset
    {
        dataitem("Sales Invoice Header"; "Sales Invoice Header")
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.", "Posting Date";
            column(PaymentTerms; PaymentTerms.Description)
            {
            }
            column(LineDiscountAmt; LineDiscountAmt)
            {
            }
            column(Logo; CompanyInfo.Picture)
            {
            }
            column(ComapnyName; CompanyInfo.Name)
            {
            }
            column(GSTNo_CompanyInfo; CompanyInfo."GST Registration No.")
            {
            }
            column(Company_PhoneNo; CompanyInfo."Phone No.")
            {
            }
            column(PANNO_Company_; CompanyInfo."P.A.N. No.")
            {
            }
            column(add; Add)
            {
            }
            column(ShipmentMethodCode_SalesInvoiceHeader; ShiAgent.Name)
            {
            }
            column(CGSTWords; CGSTWords[1])
            {
            }
            column(SGSTWords; SGSTWords[1])
            {
            }
            column(IGSTWords; IGSTWOrds[1])
            {
            }
            column(BillPan; RCust."P.A.N. No.")
            {
            }
            column(SHIPan; PANShip)
            {
            }
            column(Description_PaymentTerms; PaymentTerms.Description)
            {
            }
            column(StateCodeCust; RecState."State Code (GST Reg. No.)" + '( ' + RecState.Code + ' )')
            {
            }
            column(AmounttoCustomer_SalesInvoiceHeader; ABS(GSTBaseTotal) + CGSTAmount + SGSTAmount + IGSTAmount)
            {
            }
            column(LRRRDate_SalesInvoiceHeader; '')
            {
            }
            column(LRRRNo_SalesInvoiceHeader; '')
            {
            }
            column(ShiptoName_SalesInvoiceHeader; "Sales Invoice Header"."Ship-to Name")
            {
            }
            column(BilltoName_SalesInvoiceHeader; "Sales Invoice Header"."Bill-to Name")
            {
            }
            column(OrderDate_SalesInvoiceHeader; "Sales Invoice Header"."Order Date")
            {
            }
            column(OrderNo_SalesInvoiceHeader; '')
            {
            }
            column(PaymentTermsCode_SalesInvoiceHeader; "Sales Invoice Header"."Payment Terms Code")
            {
            }
            column(VehicleNo_SalesInvoiceHeader; "Sales Invoice Header"."Vehicle No.")
            {
            }
            column(PostingDate_SalesInvoiceHeader; "Sales Invoice Header"."Posting Date")
            {
            }
            column(No_SalesInvoiceHeader; "Sales Invoice Header"."No.")
            {
            }
            column(BilltoContact_SalesInvoiceHeader; "Sales Invoice Header"."Bill-to Contact")
            {
            }
            column(StateCust; RecState.Description)
            {
            }
            column(GSTINCUst; RCust."GST Registration No.")
            {
            }
            column(PostingDate_SalesInvoiceHeader1; FORMAT("Sales Invoice Header"."Posting Date"))
            {
            }
            column(SalesOrderNo; "Sales Invoice Header"."No.")
            {
            }
            column(PaymentTermsCode; "Sales Invoice Header"."Payment Terms Code")
            {
            }
            column(ModeOfTransport; "Sales Invoice Header"."Mode of Transport")
            {
            }
            column(LRNo; '')
            {
            }
            column(LRDate; '')
            {
            }
            column(VehicleNo; "Sales Invoice Header"."Vehicle No.")
            {
            }
            column(AmountinWords1; AmountinWords[1] + ' ' + AmountinWords[2])
            {
            }
            column(TotalQuantity; TotalQuantity)
            {
            }
            column(Totalunitprice; Totalunitprice)
            {
            }
            column(CGSTAmount; CGSTAmount)
            {
            }
            column(SGSTAmount; SGSTAmount)
            {
            }
            column(IGSTAmount; IGSTAmount)
            {
            }
            column(StateName; StateName)
            {
            }
            column(StateCode; StateCode)
            {
            }
            column(GSTBaseTotal; ABS(GSTBaseTotal))
            {
            }
            column(OtherCharges; OtherCharges)
            {
            }
            dataitem("CopyLoop"; Integer)
            {
                DataItemTableView = SORTING(Number);
                column(OutPutNo; OutPutNo)
                {
                }
                dataitem(PageLoop; Integer)
                {
                    DataItemTableView = SORTING(Number)
                                        WHERE(Number = CONST(1));
                    column(Frieght; Frieght)
                    {
                    }
                    column(Insurance; Insurance)
                    {
                    }
                    column(CopyText; COPYTEXT)
                    {
                    }
                    column(ComName; CompanyInfo.Name)
                    {
                    }
                    column(ComName1; CompanyInfo.Name + '' + CompanyInfo."Name 2")
                    {
                    }
                    column(ComAddress; CompanyInfo.Address + '' + CompanyInfo."Address 2" + '' + CompanyInfo.City + '' + CompanyInfo."Post Code")
                    {
                    }
                    column(BankAccntNo; CompanyInfo."Bank Account No.")
                    {
                    }
                    column(CompanyLogo; CompanyInfo.Picture)
                    {
                    }
                    column(CustAddr1; CustAddr[1])
                    {
                    }
                    column(CustAddr2; CustAddr[2])
                    {
                    }
                    column(CustAddr3; CustAddr[3])
                    {
                    }
                    column(CustAddr4; CustAddr[4])
                    {
                    }
                    column(PageCaption; PageCaption)
                    {
                    }
                    column(CustAddr5; CustAddr[5])
                    {
                    }
                    column(CustAddr6; CustAddr[6])
                    {
                    }
                    column(CustAddr7; CustAddr[7])
                    {
                    }
                    column(CustAddr8; CustAddr[8])
                    {
                    }
                    column(State; 'MH')
                    {
                    }
                    column(CompanyAddr1; CompanyAddr[1])
                    {
                    }
                    column(CompanyAddr2; CompanyAddr[2])
                    {
                    }
                    column(CompanyAddr3; CompanyAddr[3])
                    {
                    }
                    column(CompanyAddr4; CompanyAddr[4])
                    {
                    }
                    column(CompanyAddr5; CompanyAddr[5])
                    {
                    }
                    column(CompanyAddr6; CompanyAddr[6])
                    {
                    }
                    column(GSTIN; CompanyInfo."GST Registration No.")
                    {
                    }
                    column(ShipToAddr1; ShipToAddr[1])
                    {
                    }
                    column(ShipToAddr2; ShipToAddr[2])
                    {
                    }
                    column(ShipToAddr3; ShipToAddr[3])
                    {
                    }
                    column(ShipToAddr4; ShipToAddr[4])
                    {
                    }
                    column(ShipToAddr5; ShipToAddr[5])
                    {
                    }
                    column(ShipToAddr6; ShipToAddr[6])
                    {
                    }
                    column(ShipToAddr7; ShipToAddr[7])
                    {
                    }
                    column(ShipToAddr8; ShipToAddr[8])
                    {
                    }
                    column(BankName; recBank.Name)
                    {
                    }
                    column(BankAddress; recBank.Address)
                    {
                    }
                    column(BankAddress2; recBank."Address 2")
                    {
                    }
                    column(BankSwiftCode; recBank."SWIFT Code")
                    {
                    }
                    column(LocStateCode; recLocation."State Code")
                    {
                    }
                    dataitem("Sales Invoice Line"; "Sales Invoice Line")
                    {
                        DataItemLink = "Document No." = FIELD("No.");
                        DataItemLinkReference = "Sales Invoice Header";
                        DataItemTableView = SORTING("Document No.", "Line No.")
                                            ORDER(Ascending);
                        column(UnitofMeasure_SalesInvoiceLine; "Sales Invoice Line"."Unit of Measure")
                        {
                        }
                        column(BatchNo; '')
                        {
                        }
                        column(DocumentNo_SalesInvoiceLine; "Sales Invoice Line"."Document No.")
                        {
                        }
                        column(LineNo_SalesInvoiceLine; "Sales Invoice Line"."Line No.")
                        {
                        }
                        column(GSTBaseAmount; GSTBaseAmount)
                        {
                        }
                        column(LineDiscPer; "Sales Invoice Line"."Line Discount %")
                        {
                        }
                        column(CGSTPer; CGSTPer)
                        {
                        }
                        column(SGSTPer; SGSTPer)
                        {
                        }
                        column(CGST; CGST)
                        {
                        }
                        column(SGST; SGST)
                        {
                        }
                        column(IGST; IGST)
                        {
                        }
                        column(NoofPackages_SalesInvoiceLine; "Sales Invoice Line"."Item Category Code")
                        {
                        }
                        column(IGSTPer; IGSTPer)
                        {
                        }
                        column(Quantity_SalesInvoiceLine; "Sales Invoice Line".Quantity)
                        {
                        }
                        column(UnitPrice_SalesInvoiceLine; "Sales Invoice Line"."Unit Price")
                        {
                        }
                        column(LineDiscount_SalesInvoiceLine; "Sales Invoice Line"."Line Discount %")
                        {
                        }
                        column(SrNo; TextSrNo)
                        {
                        }
                        column(HSNSACCode_SalesInvoiceLine; "Sales Invoice Line"."HSN/SAC Code")
                        {
                        }
                        column(ItemNo; "Sales Invoice Line"."No.")
                        {
                        }
                        column(Description; "Sales Invoice Line".Description)
                        {
                        }
                        column(Description1; SalesLineComment[2])
                        {
                        }
                        column(Description2; SalesLineComment[3])
                        {
                        }
                        column(Description3; SalesLineComment[4])
                        {
                        }
                        column(Description4; SalesLineComment[5])
                        {
                        }
                        column(Description5; SalesLineComment[6])
                        {
                        }
                        column(UOM; "Sales Invoice Line"."Unit of Measure Code")
                        {
                        }
                        column(Quantity; "Sales Invoice Line".Quantity)
                        {
                        }
                        column(UnitPrice; "Sales Invoice Line"."Unit Price")
                        {
                        }
                        column(Amount; "Sales Invoice Line".Amount)
                        {
                        }
                        column(HSNHACCode; recSalesInvoiceLine."HSN/SAC Code")
                        {
                        }
                        column(DiscountPerc; recSalesInvoiceLine."Line Discount %")
                        {
                        }
                        column(TotalAmount; TotalAmount)
                        {
                        }
                        dataitem(Integer; Integer)
                        {
                            DataItemTableView = SORTING(Number);
                            column(LineCountNo; Integer.Number)
                            {
                            }

                            trigger OnPreDataItem();
                            begin
                                SETRANGE(Integer.Number, 1, 6 - LineCount);
                            end;
                        }

                        trigger OnAfterGetRecord();
                        begin
                            IF "Sales Invoice Line".Type = "Sales Invoice Line".Type::"G/L Account" then begin
                                SrNo += 1;
                                TextSRNo := Format(SrNo);
                            end
                            ELse
                                TextSRNo := '';
                            //TotalAmount += "Sales Line".Amount;
                            LineCount := "Sales Invoice Line".COUNT;
                            i := 0;
                            CLEAR(SalesLineComment);
                            SalesCommentLine.RESET;
                            SalesCommentLine.SETRANGE(SalesCommentLine."Document Type", SalesCommentLine."Document Type"::"Posted Invoice");
                            SalesCommentLine.SETRANGE("No.", "Sales Invoice Line"."Document No.");
                            SalesCommentLine.SETRANGE(SalesCommentLine."Document Line No.", "Line No.");
                            IF SalesCommentLine.FINDSET THEN BEGIN
                                REPEAT
                                    i += 1;
                                    SalesLineComment[i] += SalesCommentLine.Comment;
                                    LineCount += 1;
                                UNTIL SalesCommentLine.NEXT = 0;
                            END;

                            CGST := 0;
                            IGST := 0;
                            SGST := 0;
                            CGSTPer := 0;
                            SGSTPer := 0;
                            IGSTPer := 0;
                            GSTBaseAmount := 0;
                            //>>PCPL/BPPL/010
                            GLE.RESET;
                            GLE.SETCURRENTKEY("Transaction Type", GLE."Document Type", "Document No.", GLE."Document Line No.");
                            GLE.SETRANGE("Transaction Type", GLE."Transaction Type"::Sales);
                            GLE.SETRANGE(GLE."Document No.", "Document No.");
                            GLE.SETRANGE(GLE."Document Line No.", "Line No.");
                            GLE.SETRANGE(GLE."Document Type", GLE."Document Type"::Invoice);
                            IF GLE.FINDSET THEN BEGIN
                                REPEAT
                                    IF GLE."GST Component Code" = 'CGST' THEN BEGIN
                                        CGST := GLE."GST Amount" * -1;
                                        CGSTPer := GLE."GST %";
                                        GSTBaseAmount := GLE."GST Base Amount";
                                    END;
                                    IF GLE."GST Component Code" = 'SGST' THEN BEGIN
                                        SGST := GLE."GST Amount" * -1;
                                        SGSTPer := GLE."GST %";
                                        GSTBaseAmount := GLE."GST Base Amount";
                                    END
                                    ELSE
                                        IF GLE."GST Component Code" = 'IGST' THEN BEGIN
                                            IGST := GLE."GST Amount" * -1;
                                            IGSTPer := GLE."GST %";
                                            GSTBaseAmount := GLE."GST Base Amount";
                                        END
                                UNTIL GLE.NEXT = 0;
                            END;
                            TotalAmount := 0;
                            recSalesInvoiceLine.RESET;
                            recSalesInvoiceLine.SETRANGE(recSalesInvoiceLine."Document No.", "Sales Invoice Header"."No.");
                            recSalesInvoiceLine.SETRANGE(Type, recSalesInvoiceLine.Type::Item);
                            IF recSalesInvoiceLine.FINDFIRST THEN
                                REPEAT
                                    TotalAmount += recSalesInvoiceLine.Amount;
                                UNTIL recSalesInvoiceLine.NEXT = 0;

                            //LineDiscountAmt+="Sales Invoice Line"."Line Discount Amount";


                            /*
                                                    PostedStrOrderdetailLines.RESET;
                                                    PostedStrOrderdetailLines.SETRANGE(PostedStrOrderdetailLines."Invoice No.", "Sales Invoice Line"."Document No.");
                                                    PostedStrOrderdetailLines.SETRANGE(PostedStrOrderdetailLines."Tax/Charge Type", PostedStrOrderdetailLines."Tax/Charge Type"::Charges);
                                                    PostedStrOrderdetailLines.SETRANGE(PostedStrOrderdetailLines."Tax/Charge Group", 'INSURANCE');
                                                    //PostedStrOrderdetailLines.SETRANGE(PostedStrOrderdetailLines."Document Type","Sales Invoice Line"."Document Type");
                                                    PostedStrOrderdetailLines.SETRANGE(PostedStrOrderdetailLines."Item No.", "Sales Invoice Line"."No.");
                                                    PostedStrOrderdetailLines.SETRANGE(PostedStrOrderdetailLines."Line No.", "Sales Invoice Line"."Line No.");
                                                    IF PostedStrOrderdetailLines.FINDFIRST THEN BEGIN
                                                        Insurance := PostedStrOrderdetailLines."Calculation Value";
                                                    END;




                                                    PostedStrOrderdetailLines.RESET;
                                                    PostedStrOrderdetailLines.SETRANGE(PostedStrOrderdetailLines."Invoice No.", "Sales Invoice Line"."Document No.");
                                                    PostedStrOrderdetailLines.SETRANGE(PostedStrOrderdetailLines."Tax/Charge Type", PostedStrOrderdetailLines."Tax/Charge Type"::Charges);
                                                    PostedStrOrderdetailLines.SETRANGE(PostedStrOrderdetailLines."Tax/Charge Group", 'FREIGHT');
                                                    //PostedStrOrderdetailLines.SETRANGE(PostedStrOrderdetailLines."Document Type","Sales Invoice Line"."Document Type");
                                                    PostedStrOrderdetailLines.SETRANGE(PostedStrOrderdetailLines."Item No.", "Sales Invoice Line"."No.");
                                                    PostedStrOrderdetailLines.SETRANGE(PostedStrOrderdetailLines."Line No.", "Sales Invoice Line"."Line No.");
                                                    IF PostedStrOrderdetailLines.FINDFIRST THEN BEGIN
                                                        Frieght := PostedStrOrderdetailLines."Calculation Value";
                                                    END;
                                                    */
                        end;

                        trigger OnPreDataItem();
                        begin
                            NoOfRecords := "Sales Invoice Line".COUNT;

                            //LineDiscountAmt:=0;
                        end;
                    }
                }

                trigger OnAfterGetRecord();
                begin
                    IF Number = 1 THEN BEGIN
                        COPYTEXT := TEXT0001;
                        OutPutNo += 1;
                    END;
                    /*
                    ELSE IF Number = 2 THEN BEGIN
                       COPYTEXT := TEXT002;
                       OutPutNo += 1;
                    END
                    
                    ELSE IF Number = 3 THEN BEGIN
                       COPYTEXT := TEXT003;
                       OutPutNo += 1;
                    END
                    
                    ELSE IF Number = 4 THEN BEGIN
                       COPYTEXT := TEXT004;
                       OutPutNo += 1;
                    END;
                    */
                    SrNo := 0;

                    //CurrReport.PAGENO := 1;

                end;

                trigger OnPreDataItem();
                begin
                    NoOfLoops := ABS(NoOfCopies) + 1;
                    IF NoOfLoops <= 1 THEN
                        NoOfLoops := 1;
                    COPYTEXT := '';
                    SETRANGE(Number, 1, NoOfLoops);
                    OutPutNo := 1;
                end;
            }

            trigger OnAfterGetRecord();
            begin
                /*recCust.GET("Sales Invoice Header"."Sell-to Customer No.");
                
                
                 CustAddr[1] := recCust."No.";
                 CustAddr[2] := recCust.Name;
                 CustAddr[3] := recCust.Address;
                 CustAddr[4] := recCust."Address 2";
                 CustAddr[5] := recCust.City;
                 CustAddr[6] := recCust."Post Code";
                */
                IF PaymentTerms.GET("Sales Invoice Header"."Payment Terms Code") THEN;
                IF "Sales Invoice Header"."Location Code" = 'UNIT1' THEN
                    Add := 'Unit I-6 1A & 2, Brahma Compound, Val Village, Rehanal, Thane - 421302, Maharashtra'
                ELSE
                    IF "Sales Invoice Header"."Location Code" = 'UNIT 2' THEN
                        Add := 'Unit II-Plot No. 288, Abitghar, Sathepada, Near Sati Rolling Mill, Tal. Wada, Dist. Palghar-421303';


                IF ShiAgent.GET("Sales Invoice Header"."Shipping Agent Code") THEN;
                //IF RecState.GET(CompanyInfo.State) THEN BEGIN
                StateName := 'MAHARSTRA';
                StateCode := 'MH';
                //END;

                IF RCust.GET("Sales Invoice Header"."Sell-to Customer No.") THEN BEGIN
                    IF RecState.GET(RCust."State Code") THEN;
                END;

                IF "Sales Invoice Header"."Ship-to Code" <> '' THEN BEGIN
                    recCust.RESET;
                    recCust.SETRANGE(recCust."No.", "Sales Invoice Header"."Bill-to Customer No.");
                    IF recCust.FINDFIRST THEN
                        PANShip := '';
                END;

                IF RCust.GET("Sales Invoice Header"."Bill-to Customer No.") THEN;

                SIL.RESET;
                SIL.SETRANGE(SIL."Document No.", "Sales Invoice Header"."No.");
                IF SIL.FINDSET THEN
                    REPEAT
                        LineDiscountAmt += SIL."Line Discount Amount";
                    UNTIL SIL.NEXT = 0;

                FormatAddr.SalesInvBillTo(CustAddr, "Sales Invoice Header");
                //FormatAddr.SalesInvShipTo(ShipToAddr, "Sales Invoice Header");



                //Amount in Words
                GSTBaseTotal := 0;
                TotalAmount := 0;
                Totalunitprice := 0;
                TotalQuantity := 0;
                recSalesInvoiceLine.RESET;
                recSalesInvoiceLine.SETRANGE(recSalesInvoiceLine."Document No.", "Sales Invoice Header"."No.");
                recSalesInvoiceLine.SETFILTER(recSalesInvoiceLine."No.", '<>%1', '9140');
                IF recSalesInvoiceLine.FINDFIRST THEN BEGIN
                    REPEAT
                        TotalAmount += recSalesInvoiceLine.Amount;
                        GSTBaseTotal += (recSalesInvoiceLine."Unit Price" * recSalesInvoiceLine.Quantity) - recSalesInvoiceLine."Line Discount Amount";
                        Totalunitprice := recSalesInvoiceLine."Unit Price";
                        TotalQuantity += recSalesInvoiceLine.Quantity;
                    UNTIL recSalesInvoiceLine.NEXT = 0;

                END;


                SGSTAmount := 0;
                CGSTAmount := 0;
                IGSTAmount := 0;

                GLE.RESET;
                GLE.SETRANGE(GLE."Document No.", "Sales Invoice Header"."No.");
                GLE.SETRANGE(GLE."Entry Type", GLE."Entry Type"::"Initial Entry");
                IF GLE.FINDSET THEN BEGIN
                    REPEAT
                        IF GLE."GST Component Code" = 'IGST' THEN BEGIN
                            IGSTAmount += (GLE."GST Amount" * -1);
                        END
                        ELSE
                            IF GLE."GST Component Code" = 'SGST' THEN BEGIN
                                SGSTAmount += (GLE."GST Amount" * -1);
                            END ELSE
                                IF GLE."GST Component Code" = 'CGST' THEN BEGIN
                                    CGSTAmount += (GLE."GST Amount" * -1);
                                END;

                    UNTIL GLE.NEXT = 0;
                END;
                /*
                Frieght := 0;
                Insurance := 0;
                OtherCharges := 0;
                PostedStrOrderdetailLines.RESET;
                PostedStrOrderdetailLines.SETRANGE("Document Type",PostedStrOrderdetailLines."Document Type"::Invoice);
                PostedStrOrderdetailLines.SETRANGE(Type,PostedStrOrderdetailLines.Type::Sale);
                PostedStrOrderdetailLines.SETRANGE("Invoice No.","Sales Invoice Header"."No.");
                IF PostedStrOrderdetailLines.FINDFIRST THEN REPEAT
                   IF PostedStrOrderdetailLines."Tax/Charge Type" = PostedStrOrderdetailLines."Tax/Charge Type" :: Charges THEN
                      OtherCharges += PostedStrOrderdetailLines.Amount
                   ELSE IF PostedStrOrderdetailLines."Tax/Charge Type" = PostedStrOrderdetailLines."Tax/Charge Type" :: Charges THEN
                      Frieght += PostedStrOrderdetailLines.Amount
                   ELSE IF PostedStrOrderdetailLines."Tax/Charge Type" = PostedStrOrderdetailLines."Tax/Charge Type" :: Charges THEN
                      Insurance += PostedStrOrderdetailLines.Amount;
                UNTIL PostedStrOrderdetailLines.NEXT=0;
                PostedStrOrderdetailLines.RESET;
                PostedStrOrderdetailLines.SETRANGE("Document Type",PostedStrOrderdetailLines."Document Type"::Invoice);
                PostedStrOrderdetailLines.SETRANGE(Type,PostedStrOrderdetailLines.Type::Sale);
                PostedStrOrderdetailLines.SETRANGE("Invoice No.","Sales Invoice Header"."No.");
                IF PostedStrOrderdetailLines.FINDFIRST THEN REPEAT
                   IF PostedStrOrderdetailLines."Tax/Charge Type" = PostedStrOrderdetailLines."Tax/Charge Type" :: Charges THEN
                    Frieght+= PostedStrOrderdetailLines.Amount;
                UNTIL PostedStrOrderdetailLines.NEXT=0;
                */
                InitTextVariable;
                FormatNoText(AmountinWords, TotalAmount + IGSTAmount + SGSTAmount + CGSTAmount, "Sales Invoice Header"."Currency Code");

                InitTextVariable;
                FormatNoText(CGSTWords, CGSTAmount, "Sales Invoice Header"."Currency Code");

                InitTextVariable;
                FormatNoText(SGSTWords, SGSTAmount, "Sales Invoice Header"."Currency Code");

                InitTextVariable;
                FormatNoText(IGSTWOrds, IGSTAmount, "Sales Invoice Header"."Currency Code");

            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                group(Functions)
                {
                    field("No Of Copies"; NoOfCopies)
                    {
                    }
                }
            }
        }

        actions
        {
        }
    }

    labels
    {
    }

    trigger OnPreReport();
    begin
        CompanyInfo.GET;
        CompanyInfo.CALCFIELDS(CompanyInfo.Picture);
        FormatAddr.Company(CompanyAddr, CompanyInfo);
    end;

    var
        CompanyInfo: Record "Company Information";
        FormatAddr: Codeunit 365;
        CustAddr: array[8] of Text;
        CompanyAddr: array[8] of Text;
        NoOfCopies: Integer;
        NoOfLoops: Integer;
        OutPutNo: Integer;
        TEXT0001: Label 'Original for Recipient';
        COPYTEXT: Text;
        TEXT0002: Label 'Duplicate for Transporter';
        TEXT0003: Label '"Triplicate for Supplier  "';
        TEXT0004: Label 'Extra Copy';
        PageCaption: Label 'Page %1 of %2';
        NoOfRows: Integer;
        NoOfRecords: Integer;
        recCust: Record 18;
        repCheck: Report 1401;
        AmountinWords: array[5] of Text[250];
        TotalAmount: Decimal;
        recSalesInvoiceLine: Record 113;
        SrNo: Integer;
        TextSRNo: Text[10];
        GLE: Record "Detailed GST Ledger Entry";
        CGST: Decimal;
        SGST: Decimal;
        IGST: Decimal;
        CGSTPer: Decimal;
        SGSTPer: Decimal;
        IGSTPer: Decimal;
        CGSTAmount: Decimal;
        SGSTAmount: Decimal;
        IGSTAmount: Decimal;
        ShipToAddr: array[8] of Text[50];
        recBank: Record 270;
        recLocation: Record 14;
        RecState: Record 18547;
        StateName: Text[50];
        StateCode: Code[20];
        ShipToGST: Code[20];
        ShipToState: Text[20];
        ShipToStateCode: Code[20];
        BillToGST: Code[20];
        BillToState: Text[20];
        BillToStateCode: Code[20];
        Frieght: Decimal;
        Insurance: Decimal;
        OtherCharges: Decimal;
        //PostedStrOrderdetailLines: Record "13798";
        RCust: Record 18;
        ShipToAdd: Record 222;
        PANShip: Code[20];
        CGSTWords: array[5] of Text[250];
        SGSTWords: array[5] of Text[250];
        IGSTWOrds: array[5] of Text[250];
        Add: Text[250];
        ShiAgent: Record 291;
        LineDiscountAmt: Decimal;
        SIL: Record 113;
        GSTBaseAmount: Decimal;
        LineCount: Integer;
        GSTBaseTotal: Decimal;
        TotalCustomerAmount: Decimal;
        PaymentTerms: Record "Payment Terms";
        SalesCommentLine: Record 44;
        SalesCommentLine1: Record 44;
        SalesCommentLine2: Record 44;
        SalesLineComment: array[7] of Text;
        TotalQuantity: Decimal;
        Totalunitprice: Decimal;
        i: Integer;
        PayTerms: Record 3;
        PayDes: Text[250];
        PrintExponent: Boolean;
        Ones: Integer;
        Tens: Integer;
        Hundreds: Integer;
        Exponent: Integer;
        NoTextIndex: Integer;
        DecimalPosition: Decimal;

        GLSetup: Record 98;
        OnesText: array[20] of Text[30];
        TensText: array[10] of Text[30];
        ExponentText: array[5] of Text[30];
        Text000: Label 'Preview is not allowed.';
        Text001: Label 'Last Check No. must be filled in.';
        Text002: Label 'Filters on %1 and %2 are not allowed.';
        Text003: Label 'XXXXXXXXXXXXXXXX';
        Text004: Label 'must be entered.';
        Text005: Label 'The Bank Account and the General Journal Line must have the same currency.';
        Text008: Label 'Both Bank Accounts must have the same currency.';
        Text010: Label 'XXXXXXXXXX';
        Text011: Label 'XXXX';
        Text012: Label 'XX.XXXXXXXXXX.XXXX';
        Text013: Label '%1 already exists.';
        Text014: Label 'Check for %1 %2';
        Text016: Label 'In the Check report, One Check per Vendor and Document No.\must not be activated when Applies-to ID is specified in the journal lines.';
        Text019: Label 'Total';
        Text020: Label 'The total amount of check %1 is %2. The amount must be positive.';
        Text021: Label 'VOID VOID VOID VOID VOID VOID VOID VOID VOID VOID VOID VOID VOID VOID VOID VOID';
        Text022: Label 'NON-NEGOTIABLE';
        Text023: Label 'Test print';
        Text024: Label 'XXXX.XX';
        Text025: Label 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX';
        Text026: Label 'ZERO';
        Text027: Label 'HUNDRED';
        Text028: Label 'AND';
        Text029: Label '%1 results in a written number that is too long.';
        Text030: Label ' is already applied to %1 %2 for customer %3.';
        Text031: Label ' is already applied to %1 %2 for vendor %3.';
        Text032: Label 'ONE';
        Text033: Label 'TWO';
        Text034: Label 'THREE';
        Text035: Label 'FOUR';
        Text036: Label 'FIVE';
        Text037: Label 'SIX';
        Text038: Label 'SEVEN';
        Text039: Label 'EIGHT';
        Text040: Label 'NINE';
        Text041: Label 'TEN';
        Text042: Label 'ELEVEN';
        Text043: Label 'TWELVE';
        Text044: Label 'THIRTEEN';
        Text045: Label 'FOURTEEN';
        Text046: Label 'FIFTEEN';
        Text047: Label 'SIXTEEN';
        Text048: Label 'SEVENTEEN';
        Text049: Label 'EIGHTEEN';
        Text050: Label 'NINETEEN';
        Text051: Label 'TWENTY';
        Text052: Label 'THIRTY';
        Text053: Label 'FORTY';
        Text054: Label 'FIFTY';
        Text055: Label 'SIXTY';
        Text056: Label 'SEVENTY';
        Text057: Label 'EIGHTY';
        Text058: Label 'NINETY';
        Text059: Label 'THOUSAND';
        Text060: Label 'LAKH';
        Text061: Label 'CRORE';

    procedure FormatNoText(var NoText: array[2] of Text[80]; No: Decimal; CurrencyCode: Code[10])
    var
        PrintExponent: Boolean;
        Ones: Integer;
        Tens: Integer;
        Hundreds: Integer;
        Exponent: Integer;
        NoTextIndex: Integer;
        DecimalPosition: Decimal;

        BalancingType: Enum "Gen. Journal Account Type";
        BalancingNo: Code[20];
        CheckNoText: Text[30];
        CheckDateText: Text[30];
        CheckAmountText: Text[30];
        OnesDec: Integer;
        TensDec: Integer;
    begin
        /*
        Clear(NoText);
        NoTextIndex := 1;
        NoText[1] := '****';
        GLSetup.Get();

        if No < 1 then
            AddToNoText(NoText, NoTextIndex, PrintExponent, Text026)
        else
            for Exponent := 4 downto 1 do begin
                PrintExponent := false;
                Ones := No div Power(1000, Exponent - 1);
                Hundreds := Ones div 100;
                Tens := (Ones mod 100) div 10;
                Ones := Ones mod 10;
                if Hundreds > 0 then begin
                    AddToNoText(NoText, NoTextIndex, PrintExponent, OnesText[Hundreds]);
                    AddToNoText(NoText, NoTextIndex, PrintExponent, Text027);
                end;
                if Tens >= 2 then begin
                    AddToNoText(NoText, NoTextIndex, PrintExponent, TensText[Tens]);
                    if Ones > 0 then
                        AddToNoText(NoText, NoTextIndex, PrintExponent, OnesText[Ones]);
                end else
                    if (Tens * 10 + Ones) > 0 then
                        AddToNoText(NoText, NoTextIndex, PrintExponent, OnesText[Tens * 10 + Ones]);
                if PrintExponent and (Exponent > 1) then
                    AddToNoText(NoText, NoTextIndex, PrintExponent, ExponentText[Exponent]);
                No := No - (Hundreds * 100 + Tens * 10 + Ones) * Power(1000, Exponent - 1);
            end;

        AddToNoText(NoText, NoTextIndex, PrintExponent, 'RUPEES');
        AddToNoText(NoText, NoTextIndex, PrintExponent, Text028);
        TensDec := ((No * 100) MOD 100) DIV 10;
        OnesDec := (No * 100) MOD 10;
        IF TensDec >= 2 THEN BEGIN
            AddToNoText(NoText, NoTextIndex, PrintExponent, TensText[TensDec]);
            IF OnesDec > 0 THEN
                AddToNoText(NoText, NoTextIndex, PrintExponent, OnesText[OnesDec]);
        END ELSE
            IF (TensDec * 10 + OnesDec) > 0 THEN
                AddToNoText(NoText, NoTextIndex, PrintExponent, OnesText[TensDec * 10 + OnesDec])
            ELSE
                AddToNoText(NoText, NoTextIndex, PrintExponent, Text026);
        AddToNoText(NoText, NoTextIndex, PrintExponent, ' PAISA ONLY');
*/
        CLEAR(NoText);
        NoTextIndex := 1;
        NoText[1] := '****';

        IF No < 1 THEN
            AddToNoText(NoText, NoTextIndex, PrintExponent, Text026)
        ELSE
            FOR Exponent := 4 DOWNTO 1 DO BEGIN
                PrintExponent := FALSE;
                IF No > 99999 THEN BEGIN
                    Ones := No DIV (POWER(100, Exponent - 1) * 10);
                    Hundreds := 0;
                END ELSE BEGIN
                    Ones := No DIV POWER(1000, Exponent - 1);
                    Hundreds := Ones DIV 100;
                END;
                Tens := (Ones MOD 100) DIV 10;
                Ones := Ones MOD 10;
                IF Hundreds > 0 THEN BEGIN
                    AddToNoText(NoText, NoTextIndex, PrintExponent, OnesText[Hundreds]);
                    AddToNoText(NoText, NoTextIndex, PrintExponent, Text027);
                END;
                IF Tens >= 2 THEN BEGIN
                    AddToNoText(NoText, NoTextIndex, PrintExponent, TensText[Tens]);
                    IF Ones > 0 THEN
                        AddToNoText(NoText, NoTextIndex, PrintExponent, OnesText[Ones]);
                END ELSE
                    IF (Tens * 10 + Ones) > 0 THEN
                        AddToNoText(NoText, NoTextIndex, PrintExponent, OnesText[Tens * 10 + Ones]);
                IF PrintExponent AND (Exponent > 1) THEN
                    AddToNoText(NoText, NoTextIndex, PrintExponent, ExponentText[Exponent]);
                IF No > 99999 THEN
                    No := No - (Hundreds * 100 + Tens * 10 + Ones) * POWER(100, Exponent - 1) * 10
                ELSE
                    No := No - (Hundreds * 100 + Tens * 10 + Ones) * POWER(1000, Exponent - 1);
            END;


        AddToNoText(NoText, NoTextIndex, PrintExponent, 'RUPEES');

        AddToNoText(NoText, NoTextIndex, PrintExponent, Text028);
        // AddToNoText(NoText,NoTextIndex,PrintExponent,FORMAT(No * 100) + '/100');

        TensDec := ((No * 100) MOD 100) DIV 10;
        OnesDec := (No * 100) MOD 10;
        IF TensDec >= 2 THEN BEGIN
            AddToNoText(NoText, NoTextIndex, PrintExponent, TensText[TensDec]);
            IF OnesDec > 0 THEN
                AddToNoText(NoText, NoTextIndex, PrintExponent, OnesText[OnesDec]);
        END ELSE
            IF (TensDec * 10 + OnesDec) > 0 THEN
                AddToNoText(NoText, NoTextIndex, PrintExponent, OnesText[TensDec * 10 + OnesDec])
            ELSE
                AddToNoText(NoText, NoTextIndex, PrintExponent, Text026);

        AddToNoText(NoText, NoTextIndex, PrintExponent, ' PAISA ONLY');


    end;

    local procedure AddToNoText(var NoText: array[2] of Text[80]; var NoTextIndex: Integer; var PrintExponent: Boolean; AddText: Text[30])
    begin
        PrintExponent := true;

        while StrLen(NoText[NoTextIndex] + ' ' + AddText) > MaxStrLen(NoText[1]) do begin
            NoTextIndex := NoTextIndex + 1;
            if NoTextIndex > ArrayLen(NoText) then
                Error('Result in a written no is too long', AddText);
        end;

        NoText[NoTextIndex] := DelChr(NoText[NoTextIndex] + ' ' + AddText, '<');
    end;

    procedure InitTextVariable()
    begin
        OnesText[1] := Text032;
        OnesText[2] := Text033;
        OnesText[3] := Text034;
        OnesText[4] := Text035;
        OnesText[5] := Text036;
        OnesText[6] := Text037;
        OnesText[7] := Text038;
        OnesText[8] := Text039;
        OnesText[9] := Text040;
        OnesText[10] := Text041;
        OnesText[11] := Text042;
        OnesText[12] := Text043;
        OnesText[13] := Text044;
        OnesText[14] := Text045;
        OnesText[15] := Text046;
        OnesText[16] := Text047;
        OnesText[17] := Text048;
        OnesText[18] := Text049;
        OnesText[19] := Text050;

        TensText[1] := '';
        TensText[2] := Text051;
        TensText[3] := Text052;
        TensText[4] := Text053;
        TensText[5] := Text054;
        TensText[6] := Text055;
        TensText[7] := Text056;
        TensText[8] := Text057;
        TensText[9] := Text058;

        ExponentText[1] := '';
        ExponentText[2] := Text059;
        ExponentText[3] := Text060;
        ExponentText[4] := Text061;
    end;

}

