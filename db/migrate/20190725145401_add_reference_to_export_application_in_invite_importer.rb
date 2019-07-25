class AddReferenceToExportApplicationInInviteImporter < ActiveRecord::Migration[5.2]
  def change
    add_reference :invite_importers, :export_application, foreign_key: true
  end
end