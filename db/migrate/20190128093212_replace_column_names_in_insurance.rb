class ReplaceColumnNamesInInsurance < ActiveRecord::Migration[5.2]
    def change
        rename_column :insurances, :payment_deadline, :loan_duration
        rename_column :insurances, :private_sector, :exporting_to_private_sector
        rename_column :insurances, :public_sector, :exporting_to_public_sector
        rename_column :insurances, :reason_for_buying_good, :explain_why_importer_buying_goods
        rename_column :insurances, :also_provide_service_training, :exporter_offers_servicing_for_goods
        rename_column :insurances, :product_branch, :exported_goods_type
        rename_column :insurances, :explain_product_branch, :explain_good_industry_type
        rename_column :insurances, :part_of_big_project_yes, :yes_deliver_part_of_overall_project_other_companies
        rename_column :insurances, :part_of_big_project_no, :no_deliver_part_of_overall_project_other_companies
        rename_column :insurances, :delivery_affects_other_explain, :explain_delivery_affects_other
        rename_column :insurances, :which_regulation_requires_exportlicense, :which_regulations_arises_exportlicense_requirement
        rename_column :insurances, :goods_completion_date, :trade_contract_signing_date
        rename_column :insurances, :companny_internal_id, :exporter_internal_contract_id
        
        rename_column :insurances, :order_value_export_business_currency, :contract_trade_currency
        rename_column :insurances, :order_value_export_business_currency_amount, :contract_trade_amount
        rename_column :insurances, :percentage_of_spare_parts_in_whole_order, :percentage_of_spareparts_in_whole_order
        rename_column :insurances, :interest_currency, :charged_interest_to_importer_currency
        rename_column :insurances, :interest_amount, :charged_interest_to_importer_amount
        rename_column :insurances, :yes_price_adjustment_clause, :yes_price_adjustment_clause_with_importer
       
        rename_column :insurances, :no_price_adjustment_clause, :no_price_adjustment_clause_with_importer
        rename_column :insurances, :explain_billing_methods, :explain_accounting_methods
        rename_column :insurances, :yes_multiple_deliveries, :yes_goods_sent_multiple_deliveries
        rename_column :insurances, :no_multiple_deliveries, :no_goods_sent_multiple_deliveries
        rename_column :insurances, :risk_avaline_guarantee, :supplementary_risk_hausbank_guarantee
        rename_column :insurances, :supplied_all_rawgoods_country, :all_rawgoods_supplier_country
        
        rename_column :insurances, :supplied_all_rawgoods_currency, :all_rawgoods_supplier_currency
        rename_column :insurances, :supplied_all_rawgoods_text, :all_rawgoods_supplier_text
        rename_column :insurances, :supplied_all_rawgoods_why_necessary, :why_all_foreign_rawgoods_necessary
        rename_column :insurances, :supplied_partly_rawgoods_country, :partly_rawgoods_supplier_country
       
        rename_column :insurances, :supplied_partly_rawgoods_currency, :partly_rawgoods_supplier_currency
        rename_column :insurances, :supplied_partly_rawgoods_text, :partly_rawgoods_supplier_text
        rename_column :insurances, :supplied_partly_rawgoods_why_necessary, :why_partly_foreign_rawgoods_necessary
        
        rename_column :insurances, :company_dnnr, :exporter_company_dnnr
        rename_column :insurances, :company_registration_number, :exporter_company_registration_number
        rename_column :insurances, :company_district_court, :exporter_district_court
        
        rename_column :insurances, :company_plz, :exporter_company_plz
        rename_column :insurances, :company_city, :exporter_company_city
        rename_column :insurances, :company_country, :exporter_company_country
        rename_column :insurances, :representative_firstname, :exporter_company_representative_firstname
        
        rename_column :insurances, :representative_lastname, :exporter_company_representative_lastname
        rename_column :insurances, :representative_email, :exporter_company_representative_email
        rename_column :insurances, :representative_function, :exporter_company_representative_function
        rename_column :insurances, :representative_department, :exporter_company_representative_department

        rename_column :insurances, :self_assessment_document_file_name, :self_disclosure_file_name
        rename_column :insurances, :self_assessment_document_content_type, :self_disclosure_content_type
        rename_column :insurances, :self_assessment_document_file_size, :self_disclosure_file_size
        rename_column :insurances, :self_assessment_document_updated_at, :self_disclosure_updated_at

        rename_column :insurances, :environment_social_information_document_file_name, :environment_social_audit_file_name
        rename_column :insurances, :environment_social_information_document_content_type, :environment_social_audit_content_type
        rename_column :insurances, :environment_social_information_document_file_size, :environment_social_audit_file_size
        rename_column :insurances, :environment_social_information_document_updated_at, :environment_social_audit_updated_at

        rename_column :insurances, :project_memorandum_document_file_name, :project_memorandum_exporter_business_file_name
        rename_column :insurances, :project_memorandum_document_content_type, :project_memorandum_exporter_business_content_type
        rename_column :insurances, :project_memorandum_document_file_size, :project_memorandum_exporter_business_file_size
        rename_column :insurances, :project_memorandum_document_updated_at, :project_memorandum_exporter_business_updated_at

        rename_column :insurances, :other_document_file_name, :additional_document_file_name
        rename_column :insurances, :other_document_content_type, :additional_document_content_type
        rename_column :insurances, :other_document_file_size, :additional_document_file_size
        rename_column :insurances, :other_document_updated_at, :additional_document_updated_at

        rename_column :insurances, :financial_statement_your_customer_document_file_name, :annual_financial_statement_importer_file_name
        rename_column :insurances, :financial_statement_your_customer_document_content_type, :annual_financial_statement_importer_content_type
        rename_column :insurances, :financial_statement_your_customer_document_file_size, :annual_financial_statement_importer_file_size
        rename_column :insurances, :financial_statement_your_customer_document_updated_at, :annual_financial_statement_importer_updated_at

        rename_column :insurances, :customer_information_document_file_name, :credit_bureaus_importer_file_name
        rename_column :insurances, :customer_information_document_content_type, :credit_bureaus_importer_content_type
        rename_column :insurances, :customer_information_document_file_size, :credit_bureaus_importer_file_size
        rename_column :insurances, :customer_information_document_updated_at, :credit_bureaus_importer_updated_at
        
    end
end
