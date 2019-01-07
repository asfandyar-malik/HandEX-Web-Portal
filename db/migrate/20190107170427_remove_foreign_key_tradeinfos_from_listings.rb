class RemoveForeignKeyTradeinfosFromListings < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :listings, :tradeinfos
  end
end
