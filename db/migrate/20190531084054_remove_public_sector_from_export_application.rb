class RemovePublicSectorFromExportApplication < ActiveRecord::Migration[5.2]
  def change
    remove_column :export_applications, :is_exporting_to_public_sector
    remove_column :export_applications, :is_exporting_to_private_sctor
    add_column :export_applications, :is_exporting_to_private_sector, :boolean, :default => false
  end
end
