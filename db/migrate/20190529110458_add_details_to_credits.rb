class AddDetailsToCredits < ActiveRecord::Migration[5.2]
  def change
    add_column :credits, :employees_count, :string
    add_column :credits, :revenue_last_year, :string
    add_column :credits, :experience_with_importer_country, :string
    add_column :credits, :adequate_claims_management, :string
    add_column :credits, :agreed_payments_output_payment_term_short, :string
    add_column :credits, :agreed_payments_time_payment_term_short, :string
    add_column :credits, :agreed_payments_some_output_payment_term_short, :string
    add_column :credits, :payment_vehichle_payment_term_short, :string
    add_column :credits, :receive_deposit_time_payment_term_mid, :string
    add_column :credits, :repayment_profile_structure_payment_term_mid, :string
    add_column :credits, :loan_term_start_payment_term_mid, :string
    add_column :credits, :loan_term_other_description_payment_term_mid, :string
    add_column :credits, :number_of_installments_payment_term_short, :string
    add_column :credits, :advance_payment_currency_payment_term_both, :string
    add_column :credits, :advance_payment_amount_payment_term_both, :string
    add_column :credits, :advance_payment_description_payment_term_both, :string
    add_column :credits, :deposit_received_payment_term_both, :string
    add_column :credits, :repayment_structure_payment_term_both, :string
    add_column :credits, :credit_start_date_payment_term_both, :string
    add_column :credits, :credit_start_special_description_payment_term_both, :string
    add_column :credits, :number_of_installments_payment_term_both, :string
    add_column :credits, :payment_vehichle_explain_payment_term_both, :string
    add_column :credits, :has_german_certificate_of_origin_for_only_parts_of_good, :string
    add_column :credits, :agreed_payments_currency_payment_term_short, :string
    add_column :credits, :agreed_payments_amount_payment_term_short, :string
    add_column :credits, :delivery_doesnt_affects_sensitive_areas, :boolean
    add_column :credits, :delivery_affects_natural_reserves, :boolean
    add_column :credits, :delivery_affects_indigenous_people, :boolean
    add_column :credits, :delivery_affects_cultural_heritage, :boolean
    add_column :credits, :delivery_affects_other, :boolean
    add_column :credits, :explain_delivery_affects_other, :string
    add_column :credits, :is_export_licence_needed, :boolean
    add_column :credits, :which_regulations_enforcing_exportlicense_requirement, :string
    add_column :credits, :export_license_status, :string
    add_column :credits, :are_secondhand_goods_delivered, :boolean
    add_column :credits, :is_contract_already_signed_between_parties, :boolean
    add_column :credits, :contract_signing_date, :string
    add_column :credits, :exporter_internal_contract_id, :string
    add_column :credits, :has_special_contract_structure, :boolean
    add_column :credits, :total_delivery_value_excluding_servicing, :string
    add_column :credits, :percentage_of_spareparts_in_whole_order, :string
    add_column :credits, :other_billed_items_in_contract_currency, :string
    add_column :credits, :other_billed_items_in_contract_amount, :string
    add_column :credits, :describe_other_billed_items_in_contract, :string
    add_column :credits, :is_interest_charged_to_importer, :boolean
    add_column :credits, :is_price_adjustment_clause_with_importer, :boolean
    add_column :credits, :explain_accounting_methods, :string
    add_column :credits, :is_good_sent_in_multiple_deliveries, :boolean
    add_column :credits, :delivery_start, :string
    add_column :credits, :delivery_end, :string
    add_column :credits, :other_important_delivery_information, :string
    add_column :credits, :other_important_delivery_milestones, :string
    add_column :credits, :downpayment_delivery_currency_payment_term_short, :string
    add_column :credits, :downpayment_delivery_amount_payment_term_short, :string
    add_column :credits, :downpayment_delivery_description_payment_term_short, :string
    add_column :credits, :describe_export_business, :string
    add_column :credits, :explain_why_importer_buying_good, :string
    add_column :credits, :exported_goods_type, :string
    add_column :credits, :explain_good_industry_type, :string
    add_column :credits, :is_delivered_part_of_consortium_with_other_companies, :boolean
    add_column :credits, :is_exporting_to_private_sctor, :boolean
    add_column :credits, :is_exporting_to_public_sector, :boolean
    add_column :credits, :user_id, :bigint
    add_column :credits, :all_rawgoods_supplier_country, :string
    add_column :credits, :all_rawgoods_supplier_currency, :string
    add_column :credits, :all_rawgoods_supplier_text, :string
    add_column :credits, :why_all_foreign_rawgoods_necessary, :string
    add_column :credits, :partly_rawgoods_supplier_country, :string
    add_column :credits, :partly_rawgoods_supplier_currency, :string
    add_column :credits, :partly_rawgoods_supplier_text, :string
    add_column :credits, :why_partly_foreign_rawgoods_necessary, :string
    add_column :credits, :security_type, :string
    add_column :credits, :security_type_name, :string
    add_column :credits, :proportion_of_good_covered_by_security, :string
    add_column :credits, :when_security_received, :string
    add_column :credits, :importer_company_name, :string
    add_column :credits, :importer_street_hno, :string
    add_column :credits, :importer_plz, :string
    add_column :credits, :importer_city, :string
    add_column :credits, :importer_country, :string
    add_column :credits, :importer_shipment_company_name, :string
    add_column :credits, :importer_shipment_street_hno, :string
    add_column :credits, :importer_shipment_plz, :string
    add_column :credits, :importer_shipment_city, :string
    add_column :credits, :importer_shipment_country, :string
    add_column :credits, :explain_exporter_influence_on_importer_management, :string
    add_column :credits, :explain_previous_payment_experience_with_importer, :string
    add_column :credits, :years_trading_without_hermes_insurance, :string
    add_column :credits, :exporter_dn_no, :string
    add_column :credits, :exporter_plz, :string
    add_column :credits, :exporter_city, :string
    add_column :credits, :exporter_country, :string
    add_column :credits, :exporter_representative_firstname, :string
    add_column :credits, :exporter_representative_lastname, :string
    add_column :credits, :exporter_representative_email, :string
    add_column :credits, :exporter_representative_function, :string
    add_column :credits, :exporter_representative_department, :string
    add_column :credits, :self_disclosure_file_name, :string
    add_column :credits, :self_disclosure_content_type, :string
    add_column :credits, :self_disclosure_file_size, :integer
    add_column :credits, :self_disclosure_updated_at, :datetime
    add_column :credits, :annual_financial_statement_importer_file_name, :string
    add_column :credits, :annual_financial_statement_importer_content_type, :string
    add_column :credits, :annual_financial_statement_importer_file_size, :integer
    add_column :credits, :annual_financial_statement_importer_updated_at, :datetime
    add_column :credits, :credit_bureaus_importer_file_name, :string
    add_column :credits, :credit_bureaus_importer_content_type, :string
    add_column :credits, :credit_bureaus_importer_file_size, :integer
    add_column :credits, :credit_bureaus_importer_updated_at, :datetime
    add_column :credits, :environment_social_audit_file_name, :string
    add_column :credits, :environment_social_audit_content_type, :string
    add_column :credits, :environment_social_audit_file_size, :integer
    add_column :credits, :environment_social_audit_updated_at, :datetime
    add_column :credits, :project_memorandum_exporter_business_file_name, :string
    add_column :credits, :project_memorandum_exporter_business_content_type, :string
    add_column :credits, :project_memorandum_exporter_business_file_size, :integer
    add_column :credits, :project_memorandum_exporter_business_updated_at, :datetime
    add_column :credits, :additional_document_file_name, :string
    add_column :credits, :additional_document_content_type, :string
    add_column :credits, :additional_document_file_size, :integer
    add_column :credits, :additional_document_updated_at, :datetime
    add_column :credits, :exporter_name, :string
    add_column :credits, :exporter_telephone, :string
    add_column :credits, :explain_corruption_sanctions, :string
    add_column :credits, :is_all_information_provided_with_best_of_knowledge, :string
    add_column :credits, :exporter_street_hno, :string
    add_column :credits, :loan_term, :string
    add_column :credits, :application_status, :string
    add_column :credits, :accept_partial_refinancing, :boolean
    add_column :credits, :is_investment_good, :boolean
    add_column :credits, :is_servicing_for_goods_offered, :boolean
    add_column :credits, :loan_duration, :string
    add_column :credits, :contract_value, :string
    add_column :credits, :has_german_certificate_of_origin, :boolean
    add_column :credits, :is_security_present_for_transaction, :boolean
    add_column :credits, :is_shipment_address, :boolean
    add_column :credits, :has_significant_influence_on_importer_management, :boolean
    add_column :credits, :has_payment_experience_with_importer, :boolean
    add_column :credits, :has_previously_used_hermes_cover, :boolean
    add_column :credits, :does_corruption_declaration_apply, :boolean
    add_column :credits, :has_agreed_payment_term_already, :boolean
    add_column :credits, :has_accepted_terms_conditions, :boolean
    add_column :credits, :has_read_privacy_policy, :boolean
    add_column :credits, :has_read_all_instructions, :boolean
    add_column :credits, :payment_term_short, :boolean
    add_column :credits, :payment_term_mid, :boolean
    add_column :credits, :payment_term_both, :boolean
    add_column :credits, :downpayment_delivery_currency_payment_term_mid, :string
    add_column :credits, :downpayment_delivery_amount_payment_term_mid, :string
    add_column :credits, :downpayment_delivery_description_payment_term_mid, :string
    add_column :credits, :agreed_payments_currency_payment_term_mid, :string
    add_column :credits, :agreed_payments_output_payment_term_mid, :string
    add_column :credits, :agreed_payments_amount_payment_term_mid, :string
    add_column :credits, :downpayment_delivery_currency_payment_term_both, :string
    add_column :credits, :downpayment_delivery_amount_payment_term_both, :string
    add_column :credits, :downpayment_delivery_description_payemnt_term_both, :string
    add_column :credits, :agreed_payments_currency_payment_term_both, :string
    add_column :credits, :agreed_payments_amount_payment_term_both, :string
    add_column :credits, :agreed_payments_output_payment_term_both, :string
    add_column :credits, :agreed_payments_time_payment_term_both, :string
    add_column :credits, :agreed_payments_some_output_payment_term_both, :string
    add_column :credits, :number_of_installments_payment_term_mid, :integer
    add_column :credits, :contract_currency, :float
    add_column :credits, :when_security_received_later_exact_date, :datetime
    add_column :credits, :has_significant_influence_on_security_provider, :boolean
    add_column :credits, :explain_exporter_influence_on_security_provider, :string
    add_column :credits, :has_payment_experience_with_security_provider, :boolean
    add_column :credits, :explain_previous_payment_experience_with_security_provider, :string
    add_column :credits, :security_provider_address, :string
  end
end
