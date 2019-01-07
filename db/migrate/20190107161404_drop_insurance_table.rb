class DropInsuranceTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :insurances
  end
end
