class AddPaymentTermIntoInsurance < ActiveRecord::Migration[5.2]
  def change
    add_column :insurances, :yes_payment_term_already_agreed, :string
    add_column :insurances, :no_payment_term_already_agreed, :string
  end
end