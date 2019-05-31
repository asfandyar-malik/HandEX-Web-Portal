class AddNewFieldToExportApplication < ActiveRecord::Migration[5.2]
  def change
    add_column :export_applications, :exporter_offers_servicing_for_goods, :boolean, default: false
  end
end
