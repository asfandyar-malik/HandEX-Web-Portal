class AddPreventExporterSeeingDocsField < ActiveRecord::Migration[5.2]
  def change
    add_column :importer_informations, :prevent_exporter_from_viewing_documents, :boolean
  end
end
