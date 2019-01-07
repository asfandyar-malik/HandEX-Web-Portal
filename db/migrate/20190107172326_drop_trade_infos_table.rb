class DropTradeInfosTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :tradeinfos
  end
end
