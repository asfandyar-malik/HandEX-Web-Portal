class AddInvestmentGoodsIntoInsurance < ActiveRecord::Migration[5.2]
  def change
    add_column :insurances, :is_investment_good, :boolean
  end
end
