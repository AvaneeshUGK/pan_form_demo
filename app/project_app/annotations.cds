using CatalogService as service from '../../srv/service';

annotate service.tab1 with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'PAN Number',
            Value : PAN_Number,
        },
        {
            $Type : 'UI.DataField',
            Label : 'SBG',
            Value : SBG,
        },
        {
            $Type : 'UI.DataField',
            Label : 'SBU',
            Value : SBU,
        },
        {
            $Type : 'UI.DataField',
            Label : 'BUORPurchasing Group',
            Value : BUORPurchasing_Group,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Plant Code',
            Value : Plant_Code,
        },
    ]
);
annotate service.tab1 with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'General Details',
            ID : 'GeneralDetails',
            Target : '@UI.FieldGroup#GeneralDetails',
        },
        {
            $Type : 'UI.ReferenceFacet',
            // Label : 'table data',
            ID : 'tabledata',
            Target : 'tab1totab2/@UI.LineItem#tabledata',
        },
        {
            $Type : 'UI.CollectionFacet',
            Label : 'Vendor Response',
            ID : 'VendorResponse',
            Facets : [
            {
            $Type : 'UI.ReferenceFacet',
            // Label : 'General cont..',
            ID : 'Generalcont',
            Target : '@UI.FieldGroup#Generalcont',
        },
                {
            $Type : 'UI.ReferenceFacet',
            Label : 'Vendor Response Summary Table',
            ID : 'VendorResponseSummaryTable',
            Target : 'tab1tovendor_response_summary_table/@UI.LineItem#VendorResponseSummaryTable',
        },
                ],
        },
        {
            $Type : 'UI.ReferenceFacet',
            // Label : 'general..',
            ID : 'general',
            Target : '@UI.FieldGroup#general',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Terms & Conditions Compared with',
            ID : 'TermsConditionsComparedwith',
            Target : '@UI.FieldGroup#TermsConditionsComparedwith',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'PAYMENT TERM DETAILS',
            ID : 'PAYMENTTERMDETAILS',
            Target : 'tab1toPAYMENT_TERM_DETAILS/@UI.LineItem#PAYMENTTERMDETAILS',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'OTHER TERMS & CONDITIONS',
            ID : 'OTHERTERMSCONDITIONS',
            Target : '@UI.FieldGroup#OTHERTERMSCONDITIONS',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'PRICE DETAILS	',
            ID : 'PRICEDETAILS',
            Target : '@UI.FieldGroup#PRICEDETAILS',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'WORKFLOW HISTORY',
            ID : 'WORKFLOWHISTORY',
            Target : 'tab1toWORKFLOW_HISTORY/@UI.LineItem#WORKFLOWHISTORY',
        },]
);
annotate service.tab1 with @(
    UI.FieldGroup #GeneralDetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : PAN_Number,
                Label : 'PAN Number',
            },{
                $Type : 'UI.DataField',
                Value : SBG,
                Label : 'SBG',
            },{
                $Type : 'UI.DataField',
                Value : SBU,
                Label : 'SBU',
            },{
                $Type : 'UI.DataField',
                Value : BUORPurchasing_Group,
                Label : 'BU/Purchasing Group',
            },{
                $Type : 'UI.DataField',
                Value : Plant_Code,
                Label : 'Plant Code',
            },{
                $Type : 'UI.DataField',
                Value : Project_Description,
                Label : 'Project Description',
            },{
                $Type : 'UI.DataField',
                Value : PR_NumberBKTsBKT,
                Label : 'PR Number(s)',
            },{
                $Type : 'UI.DataField',
                Value : Subject_of_ProposalOROrder,
                Label : 'Subject of Proposal/Order',
            },{
                $Type : 'UI.DataField',
                Value : Previous_PAN_References,
                Label : 'Previous PAN References',
            },{
                $Type : 'UI.DataField',
                Value : Split_OrderORNo_of_vendors,
                Label : 'Split Order/No of vendors',
            },{
                $Type : 'UI.DataField',
                Value : SOP_Type,
                Label : 'SOP Type',
            },{
                $Type : 'UI.DataField',
                Value : Order_Type_OR_Document_type,
                Label : 'Order Type / Document type',
            },{
                $Type : 'UI.DataField',
                Value : Asset_Type,
                Label : 'Asset Type',
            },{
                $Type : 'UI.DataField',
                Value : Nature_of_Transaction,
                Label : 'Nature of Transaction',
            },{
                $Type : 'UI.DataField',
                Value : Order_Location_OR_Plant,
                Label : 'Order Location / Plant',
            },{
                $Type : 'UI.DataField',
                Value : Base_line_spend,
                Label : 'Base line spend',
            },{
                $Type : 'UI.DataField',
                Value : Project_CurrencyORBase_Currency,
                Label : 'Project CurrencyORBase Currency',
            },{
                $Type : 'UI.DataField',
                Value : Order_CurrencyORBid_currency,
                Label : 'Order Currency/Bid currency',
            },{
                $Type : 'UI.DataField',
                Value : Final_proposed_Value,
                Label : 'Final proposed Value',
            },{
                $Type : 'UI.DataField',
                Value : Order_Value_BKTIn_Project_CurrencyBKT,
                Label : 'Order Value (In Project Currency)',
            },{
                $Type : 'UI.DataField',
                Value : Order_Value_BKTIn_Bid_CurrencyBKT,
                Label : 'Order Value (In Bid Currency)',
            },{
                $Type : 'UI.DataField',
                Value : Savings_achieved_btw_initial_and_final_quote,
                Label : 'Savings achieved btw initial and final quote',
            },{
                $Type : 'UI.DataField',
                Value : Savings_against_base_line_spend_of_RFP,
                Label : 'Savings against base line spend of RFP',
            },{
                $Type : 'UI.DataField',
                Value : Number_of_Vendors_Shortlisted_for_RFP,
                Label : 'Number of Vendors Shortlisted for RFP',
            },{
                $Type : 'UI.DataField',
                Value : Number_of_Vendors_Technically_Qualified,
                Label : 'Number of Vendors Technically Qualified',
            },{
                $Type : 'UI.DataField',
                Value : Required_at_Site_Date,
                Label : 'Required at Site Date',
            },{
                $Type : 'UI.DataField',
                Value : RFP_Number,
                Label : 'RFP Number',
            },{
                $Type : 'UI.DataField',
                Value : RFP_Publish_Date,
                Label : 'RFP Publish Date',
            },{
                $Type : 'UI.DataField',
                Value : Time_Taken_for_FinalizationDASHIn_DAYS,
                Label : 'Time Taken for Finalization-In DAYS',
            },{
                $Type : 'UI.DataField',
                Value : Vendor_Final_Quotation_Date,
                Label : 'Vendor Final Quotation Date',
            },{
                $Type : 'UI.DataField',
                Value : Vendor_Final_Quotation_Amount,
                Label : 'Vendor Final Quotation Amount',
            },],
    }
);
annotate service.tab2 with @(
    UI.LineItem #tabledata : [
        {
            $Type : 'UI.DataField',
            Value : First_Publish_Data_DASH_same_as_sr_no_28,
            Label : 'First Publish Data - same as sr no 28',
        },{
            $Type : 'UI.DataField',
            Value : Last_Publish_data_before_RA,
            Label : 'Last Publish data before RA',
        },{
            $Type : 'UI.DataField',
            Value : RA_Data,
            Label : 'RA Data',
        },{
            $Type : 'UI.DataField',
            Value : Techanical_appropval_data,
            Label : 'Techanical appropval data',
        },{
            $Type : 'UI.DataField',
            Value : Client_approval_data,
            Label : 'Client approval data',
        },]
);
annotate service.tab1 with @(
    UI.FieldGroup #Generalcont : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : Proposed_Vendor_Name,
                Label : 'Proposed Vendor Name',
            },{
                $Type : 'UI.DataField',
                Value : Proposed_Vendor_Code,
                Label : 'Proposed Vendor Code',
            },{
                $Type : 'UI.DataField',
                Value : Supplier_Origin_State,
                Label : 'Supplier Origin State',
            },{
                $Type : 'UI.DataField',
                Value : Destination_State_BKTShipDASHto_LocationBKT,
                Label : 'Destination State (Ship-to Location)',
            },{
                $Type : 'UI.DataField',
                Value : Vendor_GST_Number,
                Label : 'Vendor GST Number',
            },{
                $Type : 'UI.DataField',
                Value : Vendor_CE_Score,
                Label : 'Vendor CE Score',
            },{
                $Type : 'UI.DataField',
                Value : Vendor_CE_Date,
                Label : 'Vendor CE Date',
            },{
                $Type : 'UI.DataField',
                Value : Vendor_PE_Score,
                Label : 'Vendor PE Score',
            },{
                $Type : 'UI.DataField',
                Value : Vendor_PE_Date,
                Label : 'Vendor PE Date',
            },{
                $Type : 'UI.DataField',
                Value : Vendor_Contact_PersonDASH1,
                Label : 'Vendor Contact Person-1',
            },{
                $Type : 'UI.DataField',
                Value : Vendor_Contact_PersonDASH2,
                Label : 'Vendor Contact Person-2',
            },{
                $Type : 'UI.DataField',
                Value : Technical_Committee_who_cleared_the_proposal,
                Label : 'Technical Committee who cleared the proposal',
            },{
                $Type : 'UI.DataField',
                Value : Commercial_Committee_who_cleared_the_proposal,
                Label : 'Commercial Committee who cleared the proposal',
            },{
                $Type : 'UI.DataField',
                Value : Vendor_References_to_be_displayed_in_Order,
                Label : 'Vendor References to be displayed in Order',
            },{
                $Type : 'UI.DataField',
                Value : Shortlisted_Vendors_Response_summary,
                Label : 'Shortlisted Vendors Response summary',
            },],
    }
);
annotate service.vendor_response_summary_table with @(
    UI.LineItem #VendorResponseSummaryTable : [
        {
            $Type : 'UI.DataField',
            Value : Awarded_Vendor,
            Label : 'Awarded Vendor',
        },{
            $Type : 'UI.DataField',
            Value : Vendor_Name,
            Label : 'Vendor Name',
        },{
            $Type : 'UI.DataField',
            Value : Vendor_Location,
            Label : 'Vendor Location',
        },{
            $Type : 'UI.DataField',
            Value : Technically_Approved,
            Label : 'Technically Approved',
        },{
            $Type : 'UI.DataField',
            Value : Client_Approved,
            Label : 'Client Approved',
        },{
            $Type : 'UI.DataField',
            Value : Original_quote,
            Label : 'Original quote',
        },{
            $Type : 'UI.DataField',
            Value : Final_Quote,
            Label : 'Final Quote',
        },{
            $Type : 'UI.DataField',
            Value : Order_amount_OR_Split_order_amount,
            Label : 'Order amount / Split order amount',
        },{
            $Type : 'UI.DataField',
            Value : Discount_Amount,
            Label : 'Discount Amount',
        },{
            $Type : 'UI.DataField',
            Value : Discount_percentage,
            Label : 'Discount percentage',
        },{
            $Type : 'UI.DataField',
            Value : Rank,
            Label : 'Rank',
        },]
);
annotate service.tab1 with @(
    UI.FieldGroup #general : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : Incoterms,
                Label : 'Incoterms',
            },],
    }
);
annotate service.tab1 with @(
    UI.FieldGroup #TermsConditionsComparedwith : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : Number_of_Back_to_back_Terms_agreed_with_Vendor_as_per_GPC_OR_GCC,
                Label : 'Number of Back to back Terms agreed with Vendor as per GPC / GCC',
            },{
                $Type : 'UI.DataField',
                Value : Details_of_deviated_or_better_terms_agreed_with_the_Vendor,
                Label : 'Details of deviated or better terms agreed with the Vendor',
            },{
                $Type : 'UI.DataField',
                Value : Market_Scenario_and_Demand,
                Label : 'Market Scenario and Demand',
            },{
                $Type : 'UI.DataField',
                Value : Companys_Position_and_Market_dynamics_of_this_purchase,
                Label : 'Companys Position and Market dynamics of this purchase',
            },{
                $Type : 'UI.DataField',
                Value : Should_Be_Cost_estimated,
                Label : 'Should Be Cost estimated',
            },{
                $Type : 'UI.DataField',
                Value : Highlights_of_this_proposal_and_Price_Justification_for_this_proposal,
                Label : 'Highlights of this proposal and Price Justification for this proposal',
            },{
                $Type : 'UI.DataField',
                Value : Price_Escalation_Agreed_if_any,
                Label : 'Price Escalation Agreed if any',
            },{
                $Type : 'UI.DataField',
                Value : Particulars_of_any_Free_Service_OR_Supply_Guarantees_OR_Warrant_yfrom_Vendor,
                Label : 'Particulars of any Free Service / Supply Guarantees / Warrant yfrom Vendor',
            },{
                $Type : 'UI.DataField',
                Value : Transportation,
                Label : 'Transportation',
            },{
                $Type : 'UI.DataField',
                Value : Logistics_Cost,
                Label : 'Logistics Cost',
            },{
                $Type : 'UI.DataField',
                Value : Delivery_Schedule,
                Label : 'Delivery Schedule',
            },{
                $Type : 'UI.DataField',
                Value : Tax_Details,
                Label : 'Tax Details',
            },{
                $Type : 'UI.DataField',
                Value : Additional_Remarks,
                Label : 'Additional Remarks',
            },{
                $Type : 'UI.DataField',
                Value : ABG,
                Label : 'ABG',
            },{
                $Type : 'UI.DataField',
                Value : ABG_Value,
                Label : 'ABG Value',
            },{
                $Type : 'UI.DataField',
                Value : CPBG,
                Label : 'CPBG',
            },{
                $Type : 'UI.DataField',
                Value : CPBG_Value,
                Label : 'CPBG Value',
            },],
    }
);
annotate service.PAYMENT_TERM_DETAILS with @(
    UI.LineItem #PAYMENTTERMDETAILS : [
        {
            $Type : 'UI.DataField',
            Value : Payment_Type,
            Label : 'Payment Type',
        },{
            $Type : 'UI.DataField',
            Value : ADVANCE,
            Label : 'ADVANCE',
        },{
            $Type : 'UI.DataField',
            Value : Progress,
            Label : 'Progress',
        },{
            $Type : 'UI.DataField',
            Value : Retention,
            Label : 'Retention',
        },{
            $Type : 'UI.DataField',
            Value : Percentage_Total,
            Label : 'Percentage Total',
        },{
            $Type : 'UI.DataField',
            Value : Mandatory_Documents_OR_Submissions_for_Progress,
            Label : 'Mandatory Documents / Submissions for Progress',
        },{
            $Type : 'UI.DataField',
            Value : To_be_certified_in_Company_by,
            Label : 'To be certified in Company by',
        },{
            $Type : 'UI.DataField',
            Value : Percentage_Payment,
            Label : 'Percentage Payment',
        },]
);
annotate service.tab1 with @(
    UI.FieldGroup #OTHERTERMSCONDITIONS : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : Scope_and_Responsibilities,
                Label : 'Scope and Responsibilities',
            },{
                $Type : 'UI.DataField',
                Value : Commercial_Terms,
                Label : 'Commercial Terms',
            },{
                $Type : 'UI.DataField',
                Value : Compliance_Terms,
                Label : 'Compliance Terms',
            },{
                $Type : 'UI.DataField',
                Value : Others,
                Label : 'Others',
            },],
    }
);
annotate service.tab1 with @(
    UI.FieldGroup #PRICEDETAILS : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : HSN_OR_SAC_Code,
                Label : 'HSN / SAC Code',
            },{
                $Type : 'UI.DataField',
                Value : Item_Code,
                Label : 'Item Code',
            },{
                $Type : 'UI.DataField',
                Value : Item_Short_Description,
                Label : 'Item Short Description',
            },{
                $Type : 'UI.DataField',
                Value : UOM,
                Label : 'UOM',
            },{
                $Type : 'UI.DataField',
                Value : Quantity,
                Label : 'Quantity',
            },{
                $Type : 'UI.DataField',
                Value : Unit_Price,
                Label : 'Unit Price',
            },{
                $Type : 'UI.DataField',
                Value : Amount,
                Label : 'Amount',
            },{
                $Type : 'UI.DataField',
                Value : Indian_Tax_PER,
                Label : 'Indian Tax %',
            },{
                $Type : 'UI.DataField',
                Value : Quantity_Over_Delivery_Tolerance,
                Label : 'Quantity Over Delivery Tolerance',
            },],
    }
);
annotate service.WORKFLOW_HISTORY with @(
    UI.LineItem #WORKFLOWHISTORY : [
        {
            $Type : 'UI.DataField',
            Value : Title,
            Label : 'Title',
        },{
            $Type : 'UI.DataField',
            Value : Employee_ID,
            Label : 'Employee ID',
        },{
            $Type : 'UI.DataField',
            Value : Employee_Name,
            Label : 'Employee Name',
        },{
            $Type : 'UI.DataField',
            Value : Notification_Status,
            Label : 'Notification Status',
        },{
            $Type : 'UI.DataField',
            Value : Result,
            Label : 'Result',
        },{
            $Type : 'UI.DataField',
            Value : Begin_DateAND_Time,
            Label : 'Approval Begin Date& Time',
        },{
            $Type : 'UI.DataField',
            Value : End_DateAND_Time,
            Label : 'Approval End Date& Time',
        },{
            $Type : 'UI.DataField',
            Value : Days_Taken,
            Label : 'Approval Days Taken',
        },{
            $Type : 'UI.DataField',
            Value : Remarks,
            Label : 'Remarks',
        },]
);
