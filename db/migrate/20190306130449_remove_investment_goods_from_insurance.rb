class RemoveInvestmentGoodsFromInsurance < ActiveRecord::Migration[5.2]
  def change
    remove_column :insurances, :is_investment_good
  end
end
