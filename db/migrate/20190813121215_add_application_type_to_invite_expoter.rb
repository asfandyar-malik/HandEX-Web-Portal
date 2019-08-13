class AddApplicationTypeToInviteExpoter < ActiveRecord::Migration[5.2]
  def change
    add_column :invite_exporters, :application_type, :string
  end
end
