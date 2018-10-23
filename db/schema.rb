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

ActiveRecord::Schema.define(version: 2018_10_23_015813) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bankaccounts", force: :cascade do |t|
    t.bigint "tradeinfo_id"
    t.string "name_account_holder"
    t.string "iban"
    t.string "bic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tradeinfo_id"], name: "index_bankaccounts_on_tradeinfo_id"
  end

  create_table "buyers", force: :cascade do |t|
    t.string "name"
    t.string "country"
    t.string "street_address"
    t.string "payment_terms"
    t.string "shipment_terms"
    t.integer "sales_past_12months"
    t.integer "sales_projected_12months"
    t.integer "credit_period"
    t.string "credit_from"
    t.string "years_selling_buyer"
    t.string "invoicing_currency"
    t.string "document_routing"
    t.string "document_release"
    t.boolean "related_party"
    t.boolean "write_offs"
    t.bigint "tradeinfo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tradeinfo_id"], name: "index_buyers_on_tradeinfo_id"
  end

  create_table "financials", force: :cascade do |t|
    t.bigint "tradeinfo_id"
    t.string "total_financing_required"
    t.string "time_duration"
    t.integer "projected_sales_18_19"
    t.integer "projected_sales_20_21"
    t.string "net_profitability"
    t.integer "net_worth"
    t.string "ifsc"
    t.boolean "outstanding_bank_nbfc_facility"
    t.string "name_of_institution"
    t.string "type_of_loan"
    t.integer "size_of_loan"
    t.string "defaulted_or_overdue"
    t.string "explain_defaulted_or_overdue"
    t.string "receivables_factored"
    t.string "explain_receivables_factored"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "want_insurance"
    t.index ["tradeinfo_id"], name: "index_financials_on_tradeinfo_id"
  end

  create_table "insurances", force: :cascade do |t|
    t.bigint "tradeinfo_id"
    t.string "insurance_cover"
    t.string "country_category"
    t.string "buyer_category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "date_contractsigned_with_importer"
    t.date "expected_date_product_received_importer"
    t.string "total_financing_required"
    t.string "country"
    t.string "is_investment_good"
    t.string "contract_value"
    t.string "payment_deadline"
    t.boolean "private_sector"
    t.boolean "public_sector"
    t.boolean "risk_avaline_guarantee"
    t.boolean "risk_contractual_warranty_coverage"
    t.boolean "risk_shipment_risk_cover"
    t.boolean "risk_supplier_credit_cover"
    t.boolean "risk_further_coverage"
    t.string "describe_export_business"
    t.string "reason_for_buying_good"
    t.boolean "also_provide_service_training"
    t.string "product_branch"
    t.string "explain_product_branch"
    t.boolean "part_of_big_project_yes"
    t.boolean "part_of_big_project_no"
    t.string "explain_complete_project"
    t.string "overall_responsibility_project_taken"
    t.string "overall_project_volume_currency"
    t.string "overall_project_volume"
    t.string "use_of_fund"
    t.string "use_of_fund_currency"
    t.string "amount_of_fund"
    t.boolean "delivery_doesnt_affects_sensitive_areas"
    t.boolean "delivery_affects_natural_reserves"
    t.boolean "delivery_affects_indigenous_people"
    t.boolean "delivery_affects_cultural_heritage"
    t.boolean "delivery_affects_other"
    t.string "delivery_affects_other_explain"
    t.boolean "yes_export_requires_exportlicense"
    t.boolean "no_export_requires_exportlicense"
    t.string "which_regulation_requires_exportlicense"
    t.string "exportlicense_status"
    t.boolean "yes_deliver_secondhand_goods"
    t.boolean "no_dont_deliver_secondhand_goods"
    t.string "product_original_date_of_manifacture"
    t.string "product_remaining_life"
    t.boolean "yes_good_overhauled_before_reselling"
    t.boolean "no_good_arent_overhauled_before_reselling"
    t.string "goods_overhauled_location"
    t.boolean "yes_contract_already_signed_all_parties"
    t.boolean "no_contract_already_signed_all_parties"
    t.string "goods_completion_date"
    t.string "companny_internal_id"
    t.boolean "yes_special_contract_structure"
    t.boolean "no_special_contract_structure"
    t.string "explain_special_contract_structure"
    t.string "graphic_representation_project_participants"
    t.string "contract_currency"
    t.string "order_value_export_business_currency"
    t.string "order_value_export_business_currency_amount"
    t.string "total_delivery_value"
    t.string "percentage_of_spare_parts_in_whole_order"
    t.string "more_components_open_to_exporter_currency"
    t.string "more_components_open_to_exporter_amount"
    t.string "more_components_open_to_exporter_explain"
    t.boolean "ja_customer_counts_interest"
    t.boolean "no_customer_counts_interest"
    t.string "interest_currency"
    t.string "interest_amount"
    t.boolean "yes_price_adjustment_clause"
    t.boolean "no_price_adjustment_clause"
    t.string "explain_billing_methods"
    t.boolean "yes_multiple_deliveries"
    t.boolean "no_multiple_deliveries"
    t.string "delivery_start"
    t.string "delivery_end"
    t.string "other_important_delivery_information"
    t.string "other_important_delivery_milestones"
    t.string "payment_term_shortterm"
    t.string "payment_term_middleterm"
    t.string "payment_term_both"
    t.string "downpayment_delivery_currency"
    t.string "downpayment_delivery_amount"
    t.string "downpayment_delivery_description"
    t.string "source_of_fund"
    t.string "source_of_fund_currency"
    t.string "source_of_fund_amount"
    t.string "agreed_payments_currency"
    t.string "agreed_payments_amount"
    t.string "agreed_payments_output"
    t.string "agreed_payments_time"
    t.string "agreed_payments_some_output"
    t.string "payment_vehichle"
    t.string "receive_deposit_time"
    t.string "repayment_profile_structure"
    t.string "loan_term_start"
    t.string "loan_term_other_description"
    t.string "number_of_installments"
    t.string "down_payment_before_delivery_currency"
    t.string "down_payment_before_delivery_amount"
    t.string "down_payment_before_delivery_explain"
    t.string "sonstige_kurzfrist_agreed_payment_currency"
    t.string "sonstige_kurzfrist_agreed_payment_amount"
    t.string "sonstige_kurzfrist_agreed_payment_percent"
    t.string "sonstige_kurzfrist_agreed_payment_date"
    t.string "sonstige_kurzfrist_agreed_payment_output"
    t.string "sonstige_kurzfrist_advance_payment_currency"
    t.string "sonstige_kurzfrist_advance_payment_amount"
    t.string "sonstige_kurzfrist_advance_payment_explain"
    t.string "sonstige_kurzfrist_deposit_received"
    t.string "sonstige_kurzfrist_repayment_structure"
    t.string "sonstige_kurzfrist_credit_start"
    t.string "sonstige_kurzfrist_credit_start_sonstige_explain"
    t.string "sonstige_kurzfrist_number_of_installments"
    t.string "sonstige_kurzfrist_payment_vehichle_explain"
    t.string "yes_sonstige_kurzfrist_certificate_of_origin"
    t.string "no_sonstige_kurzfrist_certificate_of_origin"
    t.string "part_of_goods__sonstige_kurzfrist_certificate_of_origin"
    t.string "ak_number"
    t.string "company_name"
    t.string "tax_number"
    t.string "years_trading_without_hermes_cover"
    t.string "experience_with_export_country"
    t.string "adequate_claims_management"
    t.index ["tradeinfo_id"], name: "index_insurances_on_tradeinfo_id"
  end

  create_table "officialdocuments", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
    t.bigint "tradeinfo_id"
    t.string "invoiceone_file_name"
    t.string "invoiceone_content_type"
    t.integer "invoiceone_file_size"
    t.datetime "invoiceone_updated_at"
    t.string "companyregistrationcertificate_file_name"
    t.string "companyregistrationcertificate_content_type"
    t.integer "companyregistrationcertificate_file_size"
    t.datetime "companyregistrationcertificate_updated_at"
    t.string "shareholdersagreement_file_name"
    t.string "shareholdersagreement_content_type"
    t.integer "shareholdersagreement_file_size"
    t.datetime "shareholdersagreement_updated_at"
    t.string "identificationdocumentshareholder_file_name"
    t.string "identificationdocumentshareholder_content_type"
    t.integer "identificationdocumentshareholder_file_size"
    t.datetime "identificationdocumentshareholder_updated_at"
    t.string "extradoc_file_name"
    t.string "extradoc_content_type"
    t.integer "extradoc_file_size"
    t.datetime "extradoc_updated_at"
    t.string "invoicetwo_file_name"
    t.string "invoicetwo_content_type"
    t.integer "invoicetwo_file_size"
    t.datetime "invoicetwo_updated_at"
    t.string "balancesheet_file_name"
    t.string "balancesheet_content_type"
    t.integer "balancesheet_file_size"
    t.datetime "balancesheet_updated_at"
    t.index ["tradeinfo_id"], name: "index_officialdocuments_on_tradeinfo_id"
  end

  create_table "tradeinfos", force: :cascade do |t|
    t.string "goods"
    t.string "category"
    t.string "companyName"
    t.string "companyEmail"
    t.string "companyPhone"
    t.string "importerName"
    t.string "importerEmail"
    t.string "taxId"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.string "country"
    t.string "exporterRegisteredAddress"
    t.string "importerTaxId"
    t.boolean "investmentGood"
    t.integer "total_financing_required"
    t.index ["user_id"], name: "index_tradeinfos_on_user_id"
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

  add_foreign_key "bankaccounts", "tradeinfos"
  add_foreign_key "buyers", "tradeinfos"
  add_foreign_key "financials", "tradeinfos"
  add_foreign_key "insurances", "tradeinfos"
  add_foreign_key "officialdocuments", "tradeinfos"
  add_foreign_key "tradeinfos", "users"
end
