class AddDefaultsToExportApplication < ActiveRecord::Migration[5.2]
  def change
    change_column :export_applications, :has_invited_importer, :boolean, :default => false
  end
end