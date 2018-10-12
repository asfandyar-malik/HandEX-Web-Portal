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

ActiveRecord::Schema.define(version: 2018_10_12_162654) do

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

  create_table "hokuments", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string "heskription"
    t.bigint "user_id"
    t.string "balancesheet_file_name"
    t.string "balancesheet_content_type"
    t.integer "balancesheet_file_size"
    t.datetime "balancesheet_updated_at"
    t.string "invoicetwo_file_name"
    t.string "invoicetwo_content_type"
    t.integer "invoicetwo_file_size"
    t.datetime "invoicetwo_updated_at"
    t.string "otherdoc_file_name"
    t.string "otherdoc_content_type"
    t.integer "otherdoc_file_size"
    t.datetime "otherdoc_updated_at"
    t.index ["user_id"], name: "index_hokuments_on_user_id"
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
    t.index ["tradeinfo_id"], name: "index_insurances_on_tradeinfo_id"
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
    t.string "importer_tax_id"
    t.string "country"
    t.string "exporterRegisteredAddress"
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
  add_foreign_key "hokuments", "users"
  add_foreign_key "insurances", "tradeinfos"
  add_foreign_key "tradeinfos", "users"
end
