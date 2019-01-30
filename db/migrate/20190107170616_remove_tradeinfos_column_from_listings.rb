class RemoveTradeinfosColumnFromListings < ActiveRecord::Migration[5.2]
  def change
    remove_column :insurances, :tradeinfo_id
  end
end
