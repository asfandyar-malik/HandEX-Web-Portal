class AddInvestmentGoodIntoTradeInfo < ActiveRecord::Migration[5.2]
  def change
    add_column :tradeinfos, :investmentGood, :boolean
  end
end
