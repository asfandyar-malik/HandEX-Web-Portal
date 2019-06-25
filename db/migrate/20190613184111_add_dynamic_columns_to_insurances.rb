class AddDynamicColumnsToInsurances < ActiveRecord::Migration[5.2]
  def change
    
    create_table :insurance_supplies_from_foreign_origins do |t|
      t.string :all_rawgoods_supplier_currency
      t.string :all_rawgoods_supplier_amount
      t.string :all_rawgoods_supplier_country
      t.belongs_to :insurance, foreign_key: true
      t.timestamps
    end
  
    create_table :insurance_guarantees do |t|
      t.string :security_type
      t.string :security_type_name
      t.belongs_to :insurance, foreign_key: true
      t.timestamps
    end
  
    create_table :insurance_agreed_payment_mid_longs do |t|
      t.string :currency
      t.string :output
      t.string :amount
      t.belongs_to :insurance, foreign_key: true
      t.timestamps
    end
  
    remove_column :insurances, :agreed_payments_currency_payment_term_mid
    remove_column :insurances, :agreed_payments_output_payment_term_mid
    remove_column :insurances, :agreed_payments_amount_payment_term_mid
  
    create_table :insurance_agreed_payments do |t|
      t.string :currency
      t.string :amount
      t.string :time
      t.string :some_output
      t.belongs_to :insurance, foreign_key: true
      t.timestamps
    end
  
    remove_column :insurances, :agreed_payments_currency_payment_term_short
    remove_column :insurances, :agreed_payments_amount_payment_term_short
    remove_column :insurances, :agreed_payments_time_payment_term_short
    remove_column :insurances, :agreed_payments_some_output_payment_term_short
  
    remove_column :insurances, :agreed_payments_currency_payment_term_both
    remove_column :insurances, :agreed_payments_amount_payment_term_both
    remove_column :insurances, :agreed_payments_time_payment_term_both
    remove_column :insurances, :agreed_payments_some_output_payment_term_both
  
    remove_column :insurances, :agreed_payments_currency_payment_term_short_2
    remove_column :insurances, :agreed_payments_amount_payment_term_short_2
    remove_column :insurances, :agreed_payments_time_payment_term_short_2
    remove_column :insurances, :agreed_payments_some_output_payment_term_short_2
  
    remove_column :insurances, :agreed_payments_currency_payment_term_short_3
    remove_column :insurances, :agreed_payments_amount_payment_term_short_3
    remove_column :insurances, :agreed_payments_time_payment_term_short_3
    remove_column :insurances, :agreed_payments_some_output_payment_term_short_3
  
    remove_column :insurances, :agreed_payments_currency_payment_term_short_4
    remove_column :insurances, :agreed_payments_amount_payment_term_short_4
    remove_column :insurances, :agreed_payments_time_payment_term_short_4
    remove_column :insurances, :agreed_payments_some_output_payment_term_short_4
  
    remove_column :insurances, :agreed_payments_currency_payment_term_short_5
    remove_column :insurances, :agreed_payments_amount_payment_term_short_5
    remove_column :insurances, :agreed_payments_time_payment_term_short_5
    remove_column :insurances, :agreed_payments_some_output_payment_term_short_5
  
  
    create_table :insurance_multiple_deliveries do |t|
      t.string :payment_relevant_information
      t.datetime :payment_relevant_milestone
      t.belongs_to :insurance, foreign_key: true
      t.timestamps
    end
  
    remove_column :insurances, :other_important_delivery_information
    remove_column :insurances, :other_important_delivery_milestones
  
    remove_column :multiple_shipments, :payment_relevant_milestone
    add_column :multiple_shipments, :payment_relevant_milestone, :string
  
    rename_table :insurance_multiple_deliveries, :insurance_multiple_shipments
  
    create_table :insurance_extra_billed_items do |t|
      t.string :description
      t.string :currency
      t.integer :amount
      t.belongs_to :insurance, foreign_key: true
      t.timestamps
    end
  
    remove_column :insurances, :other_billed_items_in_contract_currency
    remove_column :insurances, :other_billed_items_in_contract_amount
    remove_column :insurances, :describe_other_billed_items_in_contract
    
    create_table :insurance_application_of_funds do |t|
      t.string :description
      t.string :currency
      t.integer :amount
      t.belongs_to :insurance, foreign_key: true
      t.timestamps
    end
    create_table :insurance_source_of_funds do |t|
      t.string :description
      t.string :currency
      t.integer :amount
      t.belongs_to :insurance, foreign_key: true
      t.timestamps
    end
    
  end
end
