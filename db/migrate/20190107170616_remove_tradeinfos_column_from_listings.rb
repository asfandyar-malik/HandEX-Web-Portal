class RemoveTradeinfosColumnFromListings < ActiveRecord::Migration[5.2]
  def change
    remove_column :listings, :tradeinfo_id
  end
end
