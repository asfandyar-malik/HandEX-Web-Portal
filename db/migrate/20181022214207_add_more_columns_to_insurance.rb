class AddMoreColumnsToInsurance < ActiveRecord::Migration[5.2]
  def change
    add_column :insurances, :total_financing_required, :integer
    add_column :insurances, :country, :integer
    add_column :insurances, :is_investment_good, :integer
    add_column :insurances, :contract_value, :integer
    add_column :insurances, :payment_deadline, :integer
    add_column :insurances, :private_sector, :boolean
    add_column :insurances, :public_sector, :boolean

  end
end
