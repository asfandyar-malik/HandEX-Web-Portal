class AddZuliefererToSuppliesFromForeignOrigin < ActiveRecord::Migration[5.2]
  def change
    add_column :supplies_from_foreign_origins, :supplier_name, :string
    add_column :insurance_supplies_from_foreign_origins, :supplier_name, :string
  end
end
