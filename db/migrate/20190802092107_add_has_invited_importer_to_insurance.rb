class AddHasInvitedImporterToInsurance < ActiveRecord::Migration[5.2]
  def change
	  add_column :insurances, :has_invited_importer, :boolean, :default => false
  end
end