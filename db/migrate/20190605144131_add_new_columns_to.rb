class AddNewColumnsTo < ActiveRecord::Migration[5.2]
  def change
    add_column :insurances, :contract_currency, :string
    add_column :export_applications, :contract_currency, :string
  end
end
