class BuyersTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :buyers
  end
end
