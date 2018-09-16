class AddFieldsToTradeinfo < ActiveRecord::Migration[5.2]
  def change
    add_column :tradeinfos, :importer_tax_id, :string
    add_column :tradeinfos, :country, :string
  end
end
