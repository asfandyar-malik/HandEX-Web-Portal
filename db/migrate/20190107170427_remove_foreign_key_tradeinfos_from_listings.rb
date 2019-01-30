class RemoveForeignKeyTradeinfosFromListings < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :insurances, :tradeinfos
  end
end
