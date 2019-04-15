class AddFurtherColumnsToInsurances < ActiveRecord::Migration[5.2]
  def change
    add_column :insurances, :downpayment_delivery_currency_payment_term_mid, :string
    add_column :insurances, :downpayment_delivery_amount_payment_term_mid, :string
    add_column :insurances, :downpayment_delivery_description_payment_term_mid, :string
    add_column :insurances, :agreed_payments_currency_payment_term_mid, :string
    add_column :insurances, :agreed_payments_output_payment_term_mid, :string
    add_column :insurances, :agreed_payments_amount_payment_term_mid, :string
    add_column :insurances, :downpayment_delivery_currency_payment_term_both, :string
    add_column :insurances, :downpayment_delivery_amount_payment_term_both, :string
    add_column :insurances, :downpayment_delivery_description_payemnt_term_both, :string
    add_column :insurances, :agreed_payments_currency_payment_term_both, :string
    add_column :insurances, :agreed_payments_amount_payment_term_both, :string
    add_column :insurances, :agreed_payments_output_payment_term_both, :string
    add_column :insurances, :agreed_payments_time_payment_term_both, :string
    add_column :insurances, :agreed_payments_some_output_payment_term_both, :string
    remove_column :insurances, :contract_currency
    remove_column :users, :description
    remove_column :insurances, :further_lower_economic_risk
    remove_column :insurances, :give_consortiums_companies
    remove_column :insurances, :no_delivered_at_this_address
    remove_column :insurances, :yes_jointventure_with_consortiums
    remove_column :insurances, :no_jointventure_with_consortiums
  end
end