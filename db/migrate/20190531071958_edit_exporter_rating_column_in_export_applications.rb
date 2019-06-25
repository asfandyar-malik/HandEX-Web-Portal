class EditExporterRatingColumnInExportApplications < ActiveRecord::Migration[5.2]
  def change
    rename_column :export_applications, :rating_agency, :exporter_rating_agency
    rename_column :export_applications, :rating_issued_date, :exporter_rating_issued_date
    rename_column :export_applications, :external_rating_available, :export_external_rating_available
    add_column :export_applications, :importer_external_rating_available, :boolean
  end
end
