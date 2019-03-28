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

ActiveRecord::Schema.define(version: 2019_03_28_155824) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "citext"
  enable_extension "plpgsql"

  create_table "documents", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "invoice_file_name"
    t.string "invoice_content_type"
    t.integer "invoice_file_size"
    t.datetime "invoice_updated_at"
  end

  create_table "insurances", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "employees_count"
    t.string "revenue_last_year"
    t.string "experience_with_export_country"
    t.string "adequate_claims_management"
    t.string "agreed_payments_output"
    t.string "agreed_payments_time"
    t.string "agreed_payments_some_output"
    t.string "payment_vehichle"
    t.string "receive_deposit_time"
    t.string "repayment_profile_structure"
    t.string "loan_term_start"
    t.string "loan_term_other_description"
    t.string "number_of_installments"
    t.string "sonstige_kurzfrist_advance_payment_currency"
    t.string "sonstige_kurzfrist_advance_payment_amount"
    t.string "sonstige_kurzfrist_advance_payment_explain"
    t.string "sonstige_kurzfrist_deposit_received"
    t.string "sonstige_kurzfrist_repayment_structure"
    t.string "sonstige_kurzfrist_credit_start"
    t.string "sonstige_kurzfrist_credit_start_sonstige_explain"
    t.string "sonstige_kurzfrist_number_of_installments"
    t.string "sonstige_kurzfrist_payment_vehichle_explain"
    t.string "part_of_goods__sonstige_kurzfrist_certificate_of_origin"
    t.string "agreed_payments_currency"
    t.string "agreed_payments_amount"
    t.boolean "delivery_doesnt_affects_sensitive_areas", default: false
    t.boolean "delivery_affects_natural_reserves", default: false
    t.boolean "delivery_affects_indigenous_people", default: false
    t.boolean "delivery_affects_cultural_heritage", default: false
    t.boolean "delivery_affects_other", default: false
    t.string "explain_delivery_affects_other"
    t.boolean "yes_export_requires_exportlicense", default: false
    t.boolean "no_export_requires_exportlicense", default: false
    t.string "which_regulations_arises_exportlicense_requirement"
    t.string "exportlicense_status"
    t.boolean "yes_deliver_secondhand_goods", default: false
    t.boolean "no_dont_deliver_secondhand_goods", default: false
    t.boolean "yes_contract_already_signed_all_parties", default: false
    t.boolean "no_contract_already_signed_all_parties", default: false
    t.string "trade_contract_signing_date"
    t.string "exporter_internal_contract_id"
    t.boolean "yes_special_contract_structure", default: false
    t.boolean "no_special_contract_structure", default: false
    t.string "contract_currency"
    t.string "contract_trade_currency"
    t.string "contract_trade_amount"
    t.string "total_delivery_value"
    t.string "percentage_of_spareparts_in_whole_order"
    t.string "more_components_open_to_exporter_currency"
    t.string "more_components_open_to_exporter_amount"
    t.string "more_components_open_to_exporter_explain"
    t.boolean "yes_charge_interest_to_importer", default: false
    t.boolean "no_charge_interest_to_importer", default: false
    t.boolean "yes_price_adjustment_clause_with_importer", default: false
    t.boolean "no_price_adjustment_clause_with_importer", default: false
    t.string "explain_accounting_methods"
    t.boolean "yes_goods_sent_multiple_deliveries", default: false
    t.boolean "no_goods_sent_multiple_deliveries", default: false
    t.string "delivery_start"
    t.string "delivery_end"
    t.string "other_important_delivery_information"
    t.string "other_important_delivery_milestones"
    t.string "downpayment_delivery_currency"
    t.string "downpayment_delivery_amount"
    t.string "downpayment_delivery_description"
    t.string "describe_export_business"
    t.string "explain_why_importer_buying_goods"
    t.string "exported_goods_type"
    t.string "explain_good_industry_type"
    t.boolean "yes_deliver_part_of_overall_project_other_companies", default: false
    t.boolean "no_deliver_part_of_overall_project_other_companies", default: false
    t.boolean "exporting_to_private_sector", default: false
    t.boolean "exporting_to_public_sector", default: false
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
    t.string "proportion_contract_security_provided"
    t.string "when_security_received"
    t.string "importer_company_name"
    t.string "importer_address"
    t.string "importer_plz"
    t.string "importer_city"
    t.string "importer_country"
    t.string "importer_delivery_address_company_name"
    t.string "importer_delivery_address_street"
    t.string "importer_delivery_address_plz"
    t.string "importer_delivery_address_city"
    t.string "importer_delivery_address_country"
    t.string "explain_exporter_influence_on_importer_management"
    t.string "explain_previous_payment_experience_with_importer"
    t.string "trading_since_when_without_hermes_insurance"
    t.string "exporter_company_dnnr"
    t.string "exporter_company_plz"
    t.string "exporter_company_city"
    t.string "exporter_company_country"
    t.string "exporter_company_representative_firstname"
    t.string "exporter_company_representative_lastname"
    t.string "exporter_company_representative_email"
    t.string "exporter_company_representative_function"
    t.string "exporter_company_representative_department"
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
    t.string "exporter_company_name"
    t.string "exporter_telephone"
    t.string "further_lower_economic_risk"
    t.string "explain_corruption_declaration_applies"
    t.string "give_consortiums_companies"
    t.string "information_inputted_best_of_knowledge"
    t.string "exporter_company_street"
    t.string "loan_term"
    t.string "application_status", default: "new"
    t.boolean "yes_residualriskapetite_minimum_five", default: false
    t.boolean "no_residualriskapetite_minimum_five", default: false
    t.boolean "yes_investment_good", default: false
    t.boolean "no_investment_good", default: false
    t.boolean "yes_exporter_offers_servicing_for_goods", default: false
    t.boolean "no_exporter_offers_servicing_for_goods", default: false
    t.string "loan_duration"
    t.string "contract_value"
    t.boolean "yes_sonstige_kurzfrist_certificate_of_origin", default: false
    t.boolean "no_sonstige_kurzfrist_certificate_of_origin", default: false
    t.boolean "yes_security_businnes_provided", default: false
    t.boolean "no_security_businnes_provided", default: false
    t.boolean "yes_delivered_at_this_address", default: false
    t.boolean "no_delivered_at_this_address", default: false
    t.boolean "yes_exporter_influence_on_importer_management", default: false
    t.boolean "no_exporter_influence_on_importer_management", default: false
    t.boolean "yes_previous_payment_experience_with_importer", default: false
    t.boolean "no_previous_payment_experience_with_importer", default: false
    t.boolean "yes_previously_hermes_insurance_used", default: false
    t.boolean "no_previously_hermes_insurance_used", default: false
    t.boolean "corruption_declaration_applies", default: false
    t.boolean "no_corruption_declaration_applies", default: false
    t.boolean "yes_jointventure_with_consortiums", default: false
    t.boolean "no_jointventure_with_consortiums", default: false
    t.boolean "yes_payment_term_already_agreed", default: false
    t.boolean "no_payment_term_already_agreed", default: false
    t.boolean "accept_terms_conditions", default: false
    t.boolean "read_privacy_policy", default: false
    t.boolean "read_all_instructions", default: false
    t.boolean "payment_term_shortterm", default: false
    t.boolean "payment_term_middleterm", default: false
    t.boolean "payment_term_both", default: false
    t.index ["user_id"], name: "index_insurances_on_user_id"
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
    t.string "fullname"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "provider"
    t.string "uid"
    t.string "image"
    t.string "phone_number"
    t.text "description"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "insurances", "users"
end
