class AddAmountRequestedToTradeInfo < ActiveRecord::Migration[5.2]
  def change
    add_column :tradeinfos, :total_financing_required, :integer
  end
end
