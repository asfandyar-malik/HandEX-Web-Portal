class ImporterInvitationNamesUpdatedInDb < ActiveRecord::Migration[5.2]
  def change
    remove_column :export_applications, :importer_representative_name
    remove_column :export_applications, :message_to_importer
    add_column :export_applications, :invitation_message_to_importer, :string
    add_column :export_applications, :invitation_importer_representative_name, :string
    add_column :export_applications, :invitation_importer_company_name, :string
    add_column :export_applications, :invitation_importer_email, :string
  end
end
