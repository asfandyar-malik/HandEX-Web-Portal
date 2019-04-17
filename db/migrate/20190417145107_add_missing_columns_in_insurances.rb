class AddMissingColumnsInInsurances < ActiveRecord::Migration[5.2]
  def change
    add_column :insurances, :contract_currency, :float
  end
end
