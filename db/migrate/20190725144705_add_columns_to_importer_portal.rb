class AddColumnsToImporterPortal < ActiveRecord::Migration[5.2]
  def change
    add_column :invite_importers, :importer_name, :string
    add_column :invite_importers, :importer_representative_name, :string
    add_column :invite_importers, :importer_representative_email, :string
    add_column :invite_importers, :message_to_importer, :string
  end
end
