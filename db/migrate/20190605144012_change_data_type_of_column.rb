class ChangeDataTypeOfColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :insurances, :contract_currency
    remove_column :export_applications, :contract_currency
  end
end
