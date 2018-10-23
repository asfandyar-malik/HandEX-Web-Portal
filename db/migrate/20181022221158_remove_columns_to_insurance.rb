class RemoveColumnsToInsurance < ActiveRecord::Migration[5.2]
    def change
        remove_column :insurances, :total_financing_required, :integer
        remove_column :insurances, :country, :integer
        remove_column :insurances, :is_investment_good, :integer
        remove_column :insurances, :contract_value, :integer
        remove_column :insurances, :payment_deadline, :integer
        remove_column :insurances, :private_sector, :boolean
        remove_column :insurances, :public_sector, :boolean
    end
end
