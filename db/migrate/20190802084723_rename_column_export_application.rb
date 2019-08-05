class RenameColumnExportApplication < ActiveRecord::Migration[5.2]
  def change
    rename_column :export_applications, :invited_customer, :has_invited_importer
  end
end
