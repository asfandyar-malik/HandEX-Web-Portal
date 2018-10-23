class AddSourceColumnslumnsToInsuranceOther < ActiveRecord::Migration[5.2]
  def change
    add_column :insurances, :agreed_payments_currency, :string
    add_column :insurances, :agreed_payments_amount, :string
  end
end