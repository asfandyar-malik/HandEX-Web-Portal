class AddMoreColumnsToInsurances < ActiveRecord::Migration[5.2]
  def change
    add_column :insurances, :total_financing_required, :string
    add_column :insurances, :country, :string
    add_column :insurances, :is_investment_good, :string
    add_column :insurances, :contract_value, :string
    add_column :insurances, :payment_deadline, :string
    add_column :insurances, :private_sector, :boolean
    add_column :insurances, :public_sector, :boolean
  end
end
