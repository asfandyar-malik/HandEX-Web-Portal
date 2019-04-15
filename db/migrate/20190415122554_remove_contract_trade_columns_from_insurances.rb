class RemoveContractTradeColumnsFromInsurances < ActiveRecord::Migration[5.2]
  def change
    remove_column :insurances, :contract_trade_amount
    remove_column :insurances, :contract_trade_currency
  end
end