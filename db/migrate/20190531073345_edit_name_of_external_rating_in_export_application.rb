class EditNameOfExternalRatingInExportApplication < ActiveRecord::Migration[5.2]
  def change
    rename_column :export_applications, :export_external_rating_available, :exporter_external_rating_available
  end
end
