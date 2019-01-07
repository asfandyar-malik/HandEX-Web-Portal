class DropFinancialsTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :financials
  end
end
