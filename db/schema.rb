# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_07_03_165051) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "citext"
  enable_extension "plpgsql"

  create_table "agreed_payment_mid_longs", force: :cascade do |t|
    t.string "currency"
    t.string "output"
    t.string "amount"
    t.bigint "export_application_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["export_application_id"], name: "index_agreed_payment_mid_longs_on_export_application_id"
  end

  create_table "agreed_payments", force: :cascade do |t|
    t.string "currency"
    t.string "amount"
    t.string "time"
    t.string "some_output"
    t.bigint "export_application_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["export_application_id"], name: "index_agreed_payments_on_export_application_id"
  end

  create_table "application_of_funds", force: :cascade do |t|
    t.string "description"
    t.string "currency"
    t.integer "amount"
    t.bigint "export_application_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["export_application_id"], name: "index_application_of_funds_on_export_application_id"
  end

  create_table "credits", force: :cascade do |t|
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
    t.boolean "delivery_doesnt_affects_sensitive_areas"
    t.boolean "delivery_affects_natural_reserves"
    t.boolean "delivery_affects_indigenous_people"
    t.boolean "delivery_affects_cultural_heritage"
    t.boolean "delivery_affects_other"
    t.string "explain_delivery_affects_other"
    t.boolean "is_export_licence_needed"
    t.string "which_regulations_enforcing_exportlicense_requirement"
    t.string "export_license_status"
    t.boolean "are_secondhand_goods_delivered"
    t.boolean "is_contract_already_signed_between_parties"
    t.string "contract_signing_date"
    t.string "exporter_internal_contract_id"
    t.boolean "has_special_contract_structure"
    t.string "total_delivery_value_excluding_servicing"
    t.string "percentage_of_spareparts_in_whole_order"
    t.string "other_billed_items_in_contract_currency"
    t.string "other_billed_items_in_contract_amount"
    t.string "describe_other_billed_items_in_contract"
    t.boolean "is_interest_charged_to_importer"
    t.boolean "is_price_adjustment_clause_with_importer"
    t.string "explain_accounting_methods"
    t.boolean "is_good_sent_in_multiple_deliveries"
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
    t.boolean "is_delivered_part_of_consortium_with_other_companies"
    t.boolean "is_exporting_to_private_sctor"
    t.boolean "is_exporting_to_public_sector"
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
    t.string "application_status"
    t.boolean "accept_partial_refinancing"
    t.boolean "is_investment_good"
    t.boolean "is_servicing_for_goods_offered"
    t.string "loan_duration"
    t.string "contract_value"
    t.boolean "has_german_certificate_of_origin"
    t.boolean "is_security_present_for_transaction"
    t.boolean "is_shipment_address"
    t.boolean "has_significant_influence_on_importer_management"
    t.boolean "has_payment_experience_with_importer"
    t.boolean "has_previously_used_hermes_cover"
    t.boolean "does_corruption_declaration_apply"
    t.boolean "has_agreed_payment_term_already"
    t.boolean "has_accepted_terms_conditions"
    t.boolean "has_read_privacy_policy"
    t.boolean "has_read_all_instructions"
    t.boolean "payment_term_short"
    t.boolean "payment_term_mid"
    t.boolean "payment_term_both"
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
    t.string "proportion_of_goods_overhauled_aborad"
    t.string "rating_agency"
    t.string "rating_issued_date"
    t.string "remaining_life"
    t.string "sensitive_area_type"
    t.string "why_good_overhauled_abroad"
    t.string "manufacture_year"
    t.string "partly_rawgoods_supplier_amount"
    t.string "importer_address_line1"
    t.string "importer_address_line2"
    t.string "importer_company_corporate_form"
    t.string "importer_company_registration_number"
    t.string "importer_industry"
    t.string "importer_mother_company"
    t.string "importer_rating"
    t.string "importer_rating_agency"
    t.string "importer_rating_issued_date"
    t.string "explain_product_service"
    t.string "exporter_address_line1"
    t.string "exporter_address_line2"
    t.string "exporter_last_fiscal_year"
    t.string "exporter_rating"
    t.string "exporter_revenue"
    t.string "exporter_tax_id"
    t.string "exporter_total_assets"
    t.string "external_rating_available"
    t.string "goods_overhaul_country"
    t.string "describe_why_overhault_didnot_take_in_germany"
    t.string "all_rawgoods_supplier_amount"
  end

  create_table "export_applications", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "employees_count"
    t.string "revenue_last_year"
    t.string "experience_with_importer_country"
    t.string "adequate_claims_management"
    t.string "payment_vehichle_payment_term_short"
    t.string "receive_deposit_time_payment_term_mid"
    t.string "repayment_structure_payment_term_mid"
    t.string "loan_term_start_payment_term_mid"
    t.string "loan_term_start_description_payment_term_mid"
    t.string "number_of_installments_payment_term_short"
    t.string "advance_payment_currency_payment_term_both"
    t.string "advance_payment_amount_payment_term_both"
    t.string "advance_payment_description_payment_term_both"
    t.string "deposit_received_payment_term_both"
    t.string "repayment_structure_payment_term_both"
    t.string "loan_term_start_payment_term_both"
    t.string "loan_term_start_description_payment_term_both"
    t.string "number_of_installments_payment_term_both"
    t.string "payment_vehichle_payment_term_both"
    t.string "has_german_certificate_of_origin_for_only_parts_of_good"
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
    t.boolean "is_interest_charged_to_importer", default: false
    t.boolean "is_price_adjustment_clause_with_importer", default: false
    t.string "explain_accounting_methods"
    t.boolean "is_good_sent_in_multiple_deliveries", default: false
    t.string "delivery_start"
    t.string "delivery_end"
    t.string "downpayment_delivery_currency_payment_term_short"
    t.string "downpayment_delivery_amount_payment_term_short"
    t.string "describe_export_business"
    t.string "explain_why_importer_buying_good"
    t.string "exported_goods_type"
    t.string "explain_good_industry_type"
    t.boolean "is_delivered_part_of_consortium_with_other_companies", default: false
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
    t.string "downpayment_delivery_currency_payment_term_both"
    t.string "downpayment_delivery_amount_payment_term_both"
    t.integer "number_of_installments_payment_term_mid"
    t.datetime "when_security_received_later_exact_date"
    t.boolean "has_significant_influence_on_security_provider"
    t.string "explain_exporter_influence_on_security_provider"
    t.boolean "has_payment_experience_with_security_provider"
    t.string "explain_previous_payment_experience_with_security_provider"
    t.string "security_provider_address"
    t.string "exporter_address_line1"
    t.string "exporter_address_line2"
    t.string "exporter_tax_id"
    t.string "exporter_revenue"
    t.string "exporter_total_assets"
    t.string "exporter_last_fiscal_year"
    t.boolean "exporter_external_rating_available", default: false
    t.string "exporter_rating"
    t.string "exporter_rating_agency"
    t.string "exporter_rating_issued_date"
    t.string "importer_address_line1"
    t.string "importer_address_line2"
    t.string "importer_company_registration_number"
    t.string "importer_rating"
    t.string "importer_rating_agency"
    t.string "importer_rating_issued_date"
    t.string "importer_mother_company"
    t.string "importer_mother_company_corporate_form"
    t.string "importer_industry"
    t.string "explain_product_service"
    t.string "sensitive_area_type"
    t.string "remaining_life"
    t.string "manufacture_year"
    t.string "goods_overhaul_country"
    t.string "why_good_overhauled_abroad"
    t.string "proportion_of_goods_overhauled_abroad"
    t.string "describe_why_overhault_didnot_take_in_germany"
    t.string "all_rawgoods_supplier_amount"
    t.string "partly_rawgoods_supplier_amount"
    t.boolean "importer_external_rating_available", default: false
    t.boolean "is_delivered_at_this_address", default: false
    t.boolean "is_exporting_to_private_sector", default: false
    t.boolean "is_company_controlled_by_mother_company", default: false
    t.string "importer_mother_company_industry"
    t.boolean "exporter_offers_servicing_for_goods", default: false
    t.string "does_delivery_affect_sensitive_areas"
    t.boolean "are_goods_overhauled", default: false
    t.boolean "does_corruption_declaration_appy", default: false
    t.string "importer_tax_id"
    t.string "explain_sensitive_area_type"
    t.string "explain_special_structure"
    t.string "exporter_date_founded"
    t.string "project_detailed_description"
    t.boolean "is_fully_responsible_for_project"
    t.string "contract_currency"
    t.string "entire_project_currency"
    t.string "entire_project_amount"
    t.boolean "taking_part_in_tender"
    t.string "tender_submission_date"
    t.string "interest_currency"
    t.string "interest_value"
    t.string "downpayment_delivery_description_payment_term_both"
    t.string "fixed_interest_rate"
    t.string "fixed_interest_rate_value"
    t.string "variable_interest_rate"
    t.string "degressive_interest_rate"
    t.string "interest_calculation_description"
    t.string "application_type"
    t.index ["user_id"], name: "index_export_applications_on_user_id"
  end

  create_table "extra_billed_items", force: :cascade do |t|
    t.string "description"
    t.string "currency"
    t.integer "amount"
    t.bigint "export_application_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["export_application_id"], name: "index_extra_billed_items_on_export_application_id"
  end

  create_table "guarantees", force: :cascade do |t|
    t.string "security_type"
    t.string "security_type_name"
    t.bigint "export_application_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["export_application_id"], name: "index_guarantees_on_export_application_id"
  end

  create_table "insurance_agreed_payment_mid_longs", force: :cascade do |t|
    t.string "currency"
    t.string "output"
    t.string "amount"
    t.bigint "insurance_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["insurance_id"], name: "index_insurance_agreed_payment_mid_longs_on_insurance_id"
  end

  create_table "insurance_agreed_payments", force: :cascade do |t|
    t.string "currency"
    t.string "amount"
    t.string "time"
    t.string "some_output"
    t.bigint "insurance_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["insurance_id"], name: "index_insurance_agreed_payments_on_insurance_id"
  end

  create_table "insurance_application_of_funds", force: :cascade do |t|
    t.string "description"
    t.string "currency"
    t.integer "amount"
    t.bigint "insurance_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["insurance_id"], name: "index_insurance_application_of_funds_on_insurance_id"
  end

  create_table "insurance_extra_billed_items", force: :cascade do |t|
    t.string "description"
    t.string "currency"
    t.integer "amount"
    t.bigint "insurance_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["insurance_id"], name: "index_insurance_extra_billed_items_on_insurance_id"
  end

  create_table "insurance_guarantees", force: :cascade do |t|
    t.string "security_type"
    t.string "security_type_name"
    t.bigint "insurance_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["insurance_id"], name: "index_insurance_guarantees_on_insurance_id"
  end

  create_table "insurance_multiple_shipments", force: :cascade do |t|
    t.string "payment_relevant_information"
    t.datetime "payment_relevant_milestone"
    t.bigint "insurance_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["insurance_id"], name: "index_insurance_multiple_shipments_on_insurance_id"
  end

  create_table "insurance_source_of_funds", force: :cascade do |t|
    t.string "description"
    t.string "currency"
    t.integer "amount"
    t.bigint "insurance_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["insurance_id"], name: "index_insurance_source_of_funds_on_insurance_id"
  end

  create_table "insurance_supplies_from_foreign_origins", force: :cascade do |t|
    t.string "all_rawgoods_supplier_currency"
    t.string "all_rawgoods_supplier_amount"
    t.string "all_rawgoods_supplier_country"
    t.bigint "insurance_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["insurance_id"], name: "index_insurance_supplies_from_foreign_origins_on_insurance_id"
  end

  create_table "insurances", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "employees_count"
    t.string "revenue_last_year"
    t.string "experience_with_importer_country"
    t.string "adequate_claims_management"
    t.string "payment_vehichle_payment_term_short"
    t.string "receive_deposit_time_payment_term_mid"
    t.string "repayment_structure_payment_term_mid"
    t.string "loan_term_start_payment_term_mid"
    t.string "loan_term_start_description_payment_term_mid"
    t.string "number_of_installments_payment_term_short"
    t.string "advance_payment_currency_payment_term_both"
    t.string "advance_payment_amount_payment_term_both"
    t.string "advance_payment_description_payment_term_both"
    t.string "deposit_received_payment_term_both"
    t.string "repayment_structure_payment_term_both"
    t.string "loan_term_start_payment_term_both"
    t.string "loan_term_start_description_payment_term_both"
    t.string "number_of_installments_payment_term_both"
    t.string "payment_vehichle_payment_term_both"
    t.string "has_german_certificate_of_origin_for_only_parts_of_good"
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
    t.boolean "is_interest_charged_to_importer", default: false
    t.boolean "is_price_adjustment_clause_with_importer", default: false
    t.string "explain_accounting_methods"
    t.boolean "is_good_sent_in_multiple_deliveries", default: false
    t.string "delivery_start"
    t.string "delivery_end"
    t.string "downpayment_delivery_currency_payment_term_short"
    t.string "downpayment_delivery_amount_payment_term_short"
    t.string "describe_export_business"
    t.string "explain_why_importer_buying_good"
    t.string "exported_goods_type"
    t.string "explain_good_industry_type"
    t.boolean "is_delivered_part_of_consortium_with_other_companies", default: false
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
    t.string "application_status", default: "new"
    t.string "downpayment_delivery_currency_payment_term_mid"
    t.string "downpayment_delivery_amount_payment_term_mid"
    t.string "downpayment_delivery_description_payment_term_mid"
    t.string "downpayment_delivery_currency_payment_term_both"
    t.string "downpayment_delivery_amount_payment_term_both"
    t.integer "number_of_installments_payment_term_mid"
    t.datetime "when_security_received_later_exact_date"
    t.boolean "has_significant_influence_on_security_provider"
    t.string "explain_exporter_influence_on_security_provider"
    t.boolean "has_payment_experience_with_security_provider"
    t.string "explain_previous_payment_experience_with_security_provider"
    t.string "security_provider_address"
    t.string "explain_product_service"
    t.string "sensitive_area_type"
    t.string "remaining_life"
    t.string "manufacture_year"
    t.string "goods_overhaul_country"
    t.string "why_good_overhauled_abroad"
    t.string "proportion_of_goods_overhauled_abroad"
    t.string "describe_why_overhault_didnot_take_in_germany"
    t.string "all_rawgoods_supplier_amount"
    t.string "partly_rawgoods_supplier_amount"
    t.string "importer_address_line1"
    t.string "importer_address_line2"
    t.string "importer_company_registration_number"
    t.string "importer_rating"
    t.string "importer_rating_agency"
    t.string "importer_rating_issued_date"
    t.string "importer_mother_company"
    t.string "importer_mother_company_corporate_form"
    t.string "importer_industry"
    t.string "exporter_address_line1"
    t.string "exporter_address_line2"
    t.string "exporter_tax_id"
    t.string "exporter_revenue"
    t.string "exporter_total_assets"
    t.string "exporter_last_fiscal_year"
    t.boolean "external_rating_available"
    t.string "exporter_rating"
    t.string "exporter_rating_agency"
    t.string "exporter_rating_issued_date"
    t.boolean "is_delivered_at_this_address", default: false
    t.boolean "exporter_external_rating_available", default: false
    t.boolean "is_fully_responsible_for_project"
    t.string "project_detailed_description"
    t.string "importer_tax_id"
    t.string "explain_sensitive_area_type"
    t.string "explain_special_structure"
    t.string "exporter_date_founded"
    t.boolean "does_corruption_declaration_appy", default: false
    t.boolean "are_goods_overhauled", default: false
    t.string "does_delivery_affect_sensitive_areas"
    t.boolean "exporter_offers_servicing_for_goods", default: false
    t.string "importer_mother_company_industry"
    t.boolean "is_company_controlled_by_mother_company", default: false
    t.boolean "is_exporting_to_private_sector", default: false
    t.boolean "importer_external_rating_available", default: false
    t.string "contract_currency"
    t.boolean "taking_part_in_tender"
    t.string "tender_submission_date"
    t.string "downpayment_delivery_description_payment_term_both"
    t.string "entire_project_amount"
    t.string "entire_project_currency"
    t.string "interest_currency"
    t.string "interest_value"
    t.string "fixed_interest_rate"
    t.string "fixed_interest_rate_value"
    t.string "variable_interest_rate"
    t.string "degressive_interest_rate"
    t.string "interest_calculation_description"
    t.string "application_type"
    t.index ["user_id"], name: "index_insurances_on_user_id"
  end

  create_table "invite_exporters", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.string "exporter_email"
    t.string "exporter_telephone"
    t.string "exporter_broker_id"
    t.string "exporter_company_name"
    t.string "exporter_representative_name"
    t.string "application_status"
  end

  create_table "multiple_shipments", force: :cascade do |t|
    t.string "payment_relevant_information"
    t.bigint "export_application_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "payment_relevant_milestone"
    t.index ["export_application_id"], name: "index_multiple_shipments_on_export_application_id"
  end

  create_table "onboardings", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "company_name"
    t.integer "number_of_employees"
    t.string "year_founded"
    t.string "legal_form"
    t.string "address_line_one"
    t.string "address_line_two"
    t.integer "post_code"
    t.string "country"
    t.string "tax_id"
    t.string "commercial_register_name"
    t.string "commercial_register_number"
    t.datetime "date_of_registration"
    t.string "last_fiscal_year"
    t.boolean "is_euler_cover_in_past"
    t.string "euler_dnnr_number"
    t.boolean "is_insolvent_in_last_five_years"
    t.boolean "is_investigated_in_last_five_years"
    t.boolean "is_business_with_sanctioned_company"
    t.string "business_with_sanctioned_company_name"
    t.string "shareholder_name"
    t.string "shareholder_participation"
    t.boolean "is_shareholder_of_another_company"
    t.string "shareholder_of_another_company_name"
    t.string "shareholder_of_another_company_participation"
    t.boolean "is_legal_representative_pep"
    t.string "legal_representative_pep_firstname"
    t.string "legal_representative_pep_lastname"
    t.string "legal_representative_pep_dob"
    t.string "legal_representative_pep_address_line_one"
    t.integer "legal_representative_pep_postcode"
    t.string "legal_representative_pep_country"
    t.text "legal_representative_pep_reason"
    t.boolean "is_source_of_fund_own_assets"
    t.boolean "is_source_of_fund_assets_transfer"
    t.boolean "is_source_of_fund_income_operations"
    t.boolean "is_source_of_fund_assets_sales"
    t.boolean "is_source_of_fund_insurance_indemnization"
    t.boolean "is_source_of_fund_no_assets"
    t.boolean "is_source_of_fund_other"
    t.text "is_source_of_fund_other_specify"
    t.string "legal_representative_pep_address_line_two"
  end

  create_table "refinances", force: :cascade do |t|
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
    t.boolean "delivery_doesnt_affects_sensitive_areas"
    t.boolean "delivery_affects_natural_reserves"
    t.boolean "delivery_affects_indigenous_people"
    t.boolean "delivery_affects_cultural_heritage"
    t.boolean "delivery_affects_other"
    t.string "explain_delivery_affects_other"
    t.boolean "is_export_licence_needed"
    t.string "which_regulations_enforcing_exportlicense_requirement"
    t.string "export_license_status"
    t.boolean "are_secondhand_goods_delivered"
    t.boolean "is_contract_already_signed_between_parties"
    t.string "contract_signing_date"
    t.string "exporter_internal_contract_id"
    t.boolean "has_special_contract_structure"
    t.string "total_delivery_value_excluding_servicing"
    t.string "percentage_of_spareparts_in_whole_order"
    t.string "other_billed_items_in_contract_currency"
    t.string "other_billed_items_in_contract_amount"
    t.string "describe_other_billed_items_in_contract"
    t.boolean "is_interest_charged_to_importer"
    t.boolean "is_price_adjustment_clause_with_importer"
    t.string "explain_accounting_methods"
    t.boolean "is_good_sent_in_multiple_deliveries"
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
    t.boolean "is_delivered_part_of_consortium_with_other_companies"
    t.boolean "is_exporting_to_private_sctor"
    t.boolean "is_exporting_to_public_sector"
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
    t.string "application_status"
    t.boolean "accept_partial_refinancing"
    t.boolean "is_investment_good"
    t.boolean "is_servicing_for_goods_offered"
    t.string "loan_duration"
    t.string "contract_value"
    t.boolean "has_german_certificate_of_origin"
    t.boolean "is_security_present_for_transaction"
    t.boolean "is_shipment_address"
    t.boolean "has_significant_influence_on_importer_management"
    t.boolean "has_payment_experience_with_importer"
    t.boolean "has_previously_used_hermes_cover"
    t.boolean "does_corruption_declaration_apply"
    t.boolean "has_agreed_payment_term_already"
    t.boolean "has_accepted_terms_conditions"
    t.boolean "has_read_privacy_policy"
    t.boolean "has_read_all_instructions"
    t.boolean "payment_term_short"
    t.boolean "payment_term_mid"
    t.boolean "payment_term_both"
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
  end

  create_table "source_of_funds", force: :cascade do |t|
    t.string "description"
    t.string "currency"
    t.integer "amount"
    t.bigint "export_application_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["export_application_id"], name: "index_source_of_funds_on_export_application_id"
  end

  create_table "supplies_from_foreign_origins", force: :cascade do |t|
    t.string "all_rawgoods_supplier_currency"
    t.string "all_rawgoods_supplier_amount"
    t.string "all_rawgoods_supplier_country"
    t.bigint "export_application_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["export_application_id"], name: "index_supplies_from_foreign_origins_on_export_application_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "uid"
    t.string "phone_number"
    t.string "firstname"
    t.string "lastname"
    t.string "company_name"
    t.boolean "is_broker", default: false
    t.boolean "has_accepted_terms_conditions"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "agreed_payment_mid_longs", "export_applications"
  add_foreign_key "agreed_payments", "export_applications"
  add_foreign_key "application_of_funds", "export_applications"
  add_foreign_key "extra_billed_items", "export_applications"
  add_foreign_key "guarantees", "export_applications"
  add_foreign_key "insurance_agreed_payment_mid_longs", "insurances"
  add_foreign_key "insurance_agreed_payments", "insurances"
  add_foreign_key "insurance_application_of_funds", "insurances"
  add_foreign_key "insurance_extra_billed_items", "insurances"
  add_foreign_key "insurance_guarantees", "insurances"
  add_foreign_key "insurance_multiple_shipments", "insurances"
  add_foreign_key "insurance_source_of_funds", "insurances"
  add_foreign_key "insurance_supplies_from_foreign_origins", "insurances"
  add_foreign_key "insurances", "users"
  add_foreign_key "multiple_shipments", "export_applications"
  add_foreign_key "source_of_funds", "export_applications"
  add_foreign_key "supplies_from_foreign_origins", "export_applications"
end
