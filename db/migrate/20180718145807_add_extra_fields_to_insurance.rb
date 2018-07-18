class AddExtraFieldsToInsurance < ActiveRecord::Migration[5.2]
  def change
    add_column :insurances, :date_contractsigned_with_importer, :date
    add_column :insurances, :expected_date_product_received_importer, :date
  end
end
