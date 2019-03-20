class AddInvestmentGoodsParam < ActiveRecord::Migration[5.2]
  def change
    add_column :insurances, :yes_investment_good, :boolean
    add_column :insurances, :no_investment_good, :boolean
  end
end
