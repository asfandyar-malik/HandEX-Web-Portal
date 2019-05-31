class AddDefaultsToExternalRatings < ActiveRecord::Migration[5.2]
  def change
    change_column :export_applications, :exporter_external_rating_available, :boolean, :default => false
    change_column :export_applications, :importer_external_rating_available, :boolean, :default => false
  end
end
