class RemovePriceFromInsuranceTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :insurances, :price
  end
end
