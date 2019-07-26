class AddInviteExporterColumnsToExportAPplication < ActiveRecord::Migration[5.2]
  def change
    add_column :export_applications, :importer_representative_name, :string
    add_column :export_applications, :message_to_importer, :string
  end
end