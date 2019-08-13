class AddAttachmentOtherToImporterInformation < ActiveRecord::Migration[5.2]
  def change
    add_attachment :importer_informations, :other_document
  end
end
