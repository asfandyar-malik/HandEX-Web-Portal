class AddAddressToTradeinfo < ActiveRecord::Migration[5.2]
  def change
    add_column :tradeinfos, :exporterRegisteredAddress, :string
  end
end
