--
-- Initialize all widget sizes first
--
update ad_ui_element
set widgetsize = ''
;


--
-- Set Widget Size S
--
-- Update the widget widths of specific column Reference_ID
update ad_ui_element
set widgetsize = 'S'
where ad_ui_element_id in (
select uie.ad_ui_element_id
from AD_UI_Element uie
left join ad_field f on uie.ad_field_id = f.ad_field_id
left join ad_column c on f.ad_column_id = c.ad_column_id
left join ad_tab t on uie.ad_tab_id = t.ad_tab_id
left join ad_window w on t.ad_window_id = w.ad_window_id
where true
-- 15 Date
-- 29 Quantity
and c.ad_reference_id in
(15, 29)
);

-- Update the widget widths of specific Column Names
update ad_ui_element
set widgetsize = 'S'
where ad_ui_element_id in (
select uie.ad_ui_element_id
from AD_UI_Element uie
left join ad_field f on uie.ad_field_id = f.ad_field_id
left join ad_column c on f.ad_column_id = c.ad_column_id
left join ad_tab t on uie.ad_tab_id = t.ad_tab_id
left join ad_window w on t.ad_window_id = w.ad_window_id
where true
and c.columnname in (
'C_Order_ID'
,'C_UOM_ID'
,'DocumentNo'
,'DocStatus'
,'C_Invoice_Candidate_HeaderAggregation_ID'
,'C_Invoice_Candidate_HeaderAggregation_Override_ID'
,'C_Invoice_Candidate_HeaderAggregation_Effective_ID'
,'Line'
,'POReference'
,'ReferenceNo'
,'Value'
)
);

--
-- Set Widget Size M
--
-- Update the widget widths of specific column Reference_ID
update ad_ui_element
set widgetsize = 'M'
where ad_ui_element_id in (
select uie.ad_ui_element_id
from AD_UI_Element uie
left join ad_field f on uie.ad_field_id = f.ad_field_id
left join ad_column c on f.ad_column_id = c.ad_column_id
left join ad_tab t on uie.ad_tab_id = t.ad_tab_id
left join ad_window w on t.ad_window_id = w.ad_window_id
where true
-- Date+Time
and c.ad_reference_id = 16
);

-- Update the widget widths of specific Column Names
update ad_ui_element
set widgetsize = 'M'
where ad_ui_element_id in (
select uie.ad_ui_element_id
from AD_UI_Element uie
left join ad_field f on uie.ad_field_id = f.ad_field_id
left join ad_column c on f.ad_column_id = c.ad_column_id
left join ad_tab t on uie.ad_tab_id = t.ad_tab_id
left join ad_window w on t.ad_window_id = w.ad_window_id
where true
and c.columnname in (
'AD_Org_ID'
,'AD_Client_ID'
,'C_DocType_ID'
,'C_DocTypeTarget_ID'
,'M_Product_Category_ID'
)
);


--
-- Set Widget Size L
--
-- Update the widget widths of specific Column Names
update ad_ui_element
set widgetsize = 'L'
where ad_ui_element_id in (
select uie.ad_ui_element_id
from AD_UI_Element uie
left join ad_field f on uie.ad_field_id = f.ad_field_id
left join ad_column c on f.ad_column_id = c.ad_column_id
left join ad_tab t on uie.ad_tab_id = t.ad_tab_id
left join ad_window w on t.ad_window_id = w.ad_window_id
where true
and c.columnname in (
'Bill_BPartner_ID'
,'C_BPartner_ID'
,'C_BPartner_Override_ID'
,'C_BPartner_Vendor_ID'
,'DropShip_BPartner_ID'
,'HandOver_Partner_ID'
,'Pay_BPartner_ID'
,'Shipper_BPartner_ID'
,'SubProducer_BPartner_ID'
,'M_Product_ID'
)
);
