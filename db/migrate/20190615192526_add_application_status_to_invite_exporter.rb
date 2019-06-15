class AddApplicationStatusToInviteExporter < ActiveRecord::Migration[5.2]
  def change
    add_column :invite_exporters, :application_status, :string
  end
end
