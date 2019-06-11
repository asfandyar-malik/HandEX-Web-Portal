class CreateSuppliesFromForeignOrigin < ActiveRecord::Migration[5.2]
  def change
    create_table :supplies_from_foreign_origins do |t|
      t.string :all_rawgoods_supplier_currency
      t.string :all_rawgoods_supplier_amount
      t.string :all_rawgoods_supplier_country
      t.belongs_to :export_application, foreign_key: true
      t.timestamps
    end
  end
end