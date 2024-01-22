using { proj_schema as my } from '../db/schema';
service CatalogService {
 @odata.draft.enabled
 entity tab1 as projection on my.tab1;
 entity tab2 as projection on my.tab2;
 entity vendor_response_summary_table as projection on my.vendor_response_summary_table;
 entity PAYMENT_TERM_DETAILS as projection on my.PAYMENT_TERM_DETAILS;
 entity WORKFLOW_HISTORY as projection on my.WORKFLOW_HISTORY;
 entity attachments as projection on my.attachments;

}