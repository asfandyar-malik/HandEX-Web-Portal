class CreateExportApplicationTable < ActiveRecord::Migration[5.2]
  def change
    create_table "export_applications", force: :cascade do |t|
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.string "employees_count"
      t.string "revenue_last_year"
      t.string "experience_with_importer_country"
      t.string "adequate_claims_management"
      t.string "agreed_payments_output_payment_term_short"
      t.string "agreed_payments_time_payment_term_short"
      t.string "agreed_payments_some_output_payment_term_short"
      t.string "payment_vehichle_payment_term_short"
      t.string "receive_deposit_time_payment_term_mid"
      t.string "repayment_profile_structure_payment_term_mid"
      t.string "loan_term_start_payment_term_mid"
      t.string "loan_term_other_description_payment_term_mid"
      t.string "number_of_installments_payment_term_short"
      t.string "advance_payment_currency_payment_term_both"
      t.string "advance_payment_amount_payment_term_both"
      t.string "advance_payment_description_payment_term_both"
      t.string "deposit_received_payment_term_both"
      t.string "repayment_structure_payment_term_both"
      t.string "credit_start_date_payment_term_both"
      t.string "credit_start_special_description_payment_term_both"
      t.string "number_of_installments_payment_term_both"
      t.string "payment_vehichle_explain_payment_term_both"
      t.string "has_german_certificate_of_origin_for_only_parts_of_good"
      t.string "agreed_payments_currency_payment_term_short"
      t.string "agreed_payments_amount_payment_term_short"
      t.boolean "delivery_doesnt_affects_sensitive_areas", default: false
      t.boolean "delivery_affects_natural_reserves", default: false
      t.boolean "delivery_affects_indigenous_people", default: false
      t.boolean "delivery_affects_cultural_heritage", default: false
      t.boolean "delivery_affects_other", default: false
      t.string "explain_delivery_affects_other"
      t.boolean "is_export_licence_needed", default: false
      t.string "which_regulations_enforcing_exportlicense_requirement"
      t.string "export_license_status"
      t.boolean "are_secondhand_goods_delivered", default: false
      t.boolean "is_contract_already_signed_between_parties", default: false
      t.string "contract_signing_date"
      t.string "exporter_internal_contract_id"
      t.boolean "has_special_contract_structure", default: false
      t.string "total_delivery_value_excluding_servicing"
      t.string "percentage_of_spareparts_in_whole_order"
      t.string "other_billed_items_in_contract_currency"
      t.string "other_billed_items_in_contract_amount"
      t.string "describe_other_billed_items_in_contract"
      t.boolean "is_interest_charged_to_importer", default: false
      t.boolean "is_price_adjustment_clause_with_importer", default: false
      t.string "explain_accounting_methods"
      t.boolean "is_good_sent_in_multiple_deliveries", default: false
      t.string "delivery_start"
      t.string "delivery_end"
      t.string "other_important_delivery_information"
      t.string "other_important_delivery_milestones"
      t.string "downpayment_delivery_currency_payment_term_short"
      t.string "downpayment_delivery_amount_payment_term_short"
      t.string "downpayment_delivery_description_payment_term_short"
      t.string "describe_export_business"
      t.string "explain_why_importer_buying_good"
      t.string "exported_goods_type"
      t.string "explain_good_industry_type"
      t.boolean "is_delivered_part_of_consortium_with_other_companies", default: false
      t.boolean "is_exporting_to_private_sctor", default: false
      t.boolean "is_exporting_to_public_sector", default: false
      t.bigint "user_id"
      t.string "all_rawgoods_supplier_country"
      t.string "all_rawgoods_supplier_currency"
      t.string "all_rawgoods_supplier_text"
      t.string "why_all_foreign_rawgoods_necessary"
      t.string "partly_rawgoods_supplier_country"
      t.string "partly_rawgoods_supplier_currency"
      t.string "partly_rawgoods_supplier_text"
      t.string "why_partly_foreign_rawgoods_necessary"
      t.string "security_type"
      t.string "security_type_name"
      t.string "proportion_of_good_covered_by_security"
      t.string "when_security_received"
      t.string "importer_company_name"
      t.string "importer_street_hno"
      t.string "importer_plz"
      t.string "importer_city"
      t.string "importer_country"
      t.string "importer_shipment_company_name"
      t.string "importer_shipment_street_hno"
      t.string "importer_shipment_plz"
      t.string "importer_shipment_city"
      t.string "importer_shipment_country"
      t.string "explain_exporter_influence_on_importer_management"
      t.string "explain_previous_payment_experience_with_importer"
      t.string "years_trading_without_hermes_insurance"
      t.string "exporter_dn_no"
      t.string "exporter_plz"
      t.string "exporter_city"
      t.string "exporter_country"
      t.string "exporter_representative_firstname"
      t.string "exporter_representative_lastname"
      t.string "exporter_representative_email"
      t.string "exporter_representative_function"
      t.string "exporter_representative_department"
      t.string "self_disclosure_file_name"
      t.string "self_disclosure_content_type"
      t.integer "self_disclosure_file_size"
      t.datetime "self_disclosure_updated_at"
      t.string "annual_financial_statement_importer_file_name"
      t.string "annual_financial_statement_importer_content_type"
      t.integer "annual_financial_statement_importer_file_size"
      t.datetime "annual_financial_statement_importer_updated_at"
      t.string "credit_bureaus_importer_file_name"
      t.string "credit_bureaus_importer_content_type"
      t.integer "credit_bureaus_importer_file_size"
      t.datetime "credit_bureaus_importer_updated_at"
      t.string "environment_social_audit_file_name"
      t.string "environment_social_audit_content_type"
      t.integer "environment_social_audit_file_size"
      t.datetime "environment_social_audit_updated_at"
      t.string "project_memorandum_exporter_business_file_name"
      t.string "project_memorandum_exporter_business_content_type"
      t.integer "project_memorandum_exporter_business_file_size"
      t.datetime "project_memorandum_exporter_business_updated_at"
      t.string "additional_document_file_name"
      t.string "additional_document_content_type"
      t.integer "additional_document_file_size"
      t.datetime "additional_document_updated_at"
      t.string "exporter_name"
      t.string "exporter_telephone"
      t.string "explain_corruption_sanctions"
      t.string "is_all_information_provided_with_best_of_knowledge"
      t.string "exporter_street_hno"
      t.string "loan_term"
      t.string "application_status", default: "new"
      t.boolean "accept_partial_refinancing", default: false
      t.boolean "is_investment_good", default: false
      t.boolean "is_servicing_for_goods_offered", default: false
      t.string "loan_duration"
      t.string "contract_value"
      t.boolean "has_german_certificate_of_origin", default: false
      t.boolean "is_security_present_for_transaction", default: false
      t.boolean "is_shipment_address", default: false
      t.boolean "has_significant_influence_on_importer_management", default: false
      t.boolean "has_payment_experience_with_importer", default: false
      t.boolean "has_previously_used_hermes_cover", default: false
      t.boolean "does_corruption_declaration_apply", default: false
      t.boolean "has_agreed_payment_term_already", default: false
      t.boolean "has_accepted_terms_conditions", default: false
      t.boolean "has_read_privacy_policy", default: false
      t.boolean "has_read_all_instructions", default: false
      t.boolean "payment_term_short", default: false
      t.boolean "payment_term_mid", default: false
      t.boolean "payment_term_both", default: false
      t.string "downpayment_delivery_currency_payment_term_mid"
      t.string "downpayment_delivery_amount_payment_term_mid"
      t.string "downpayment_delivery_description_payment_term_mid"
      t.string "agreed_payments_currency_payment_term_mid"
      t.string "agreed_payments_output_payment_term_mid"
      t.string "agreed_payments_amount_payment_term_mid"
      t.string "downpayment_delivery_currency_payment_term_both"
      t.string "downpayment_delivery_amount_payment_term_both"
      t.string "downpayment_delivery_description_payemnt_term_both"
      t.string "agreed_payments_currency_payment_term_both"
      t.string "agreed_payments_amount_payment_term_both"
      t.string "agreed_payments_output_payment_term_both"
      t.string "agreed_payments_time_payment_term_both"
      t.string "agreed_payments_some_output_payment_term_both"
      t.integer "number_of_installments_payment_term_mid"
      t.float "contract_currency"
      t.datetime "when_security_received_later_exact_date"
      t.boolean "has_significant_influence_on_security_provider"
      t.string "explain_exporter_influence_on_security_provider"
      t.boolean "has_payment_experience_with_security_provider"
      t.string "explain_previous_payment_experience_with_security_provider"
      t.string "security_provider_address"
      t.index ["user_id"], name: "index_export_applications_on_user_id"
    end
  end
end
