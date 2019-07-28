class AddInviteImporterPopUpToInsurances < ActiveRecord::Migration[5.2]
  def change
    add_column :insurances, :invitation_message_to_importer, :string
    add_column :insurances, :invitation_importer_representative_name, :string
    add_column :insurances, :invitation_importer_company_name, :string
    add_column :insurances, :invitation_importer_email, :string
  end
end
