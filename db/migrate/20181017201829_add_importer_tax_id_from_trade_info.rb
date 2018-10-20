class AddImporterTaxIdFromTradeInfo < ActiveRecord::Migration[5.2]
  def change
    add_column :tradeinfos, :importerTaxId, :string
  end
end
