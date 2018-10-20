class RemoveImporterTaxIdFromTradeInfo < ActiveRecord::Migration[5.2]
  def change
    remove_column :tradeinfos, :importer_tax_id
  end
end

