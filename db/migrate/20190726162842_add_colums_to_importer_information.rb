class AddColumsToImporterInformation < ActiveRecord::Migration[5.2]
  def change
    add_column :importer_informations, :application_status, :string
    add_column :importer_informations, :application_type, :string
  end
end
