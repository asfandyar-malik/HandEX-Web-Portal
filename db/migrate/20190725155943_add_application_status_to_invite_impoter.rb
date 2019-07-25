class AddApplicationStatusToInviteImpoter < ActiveRecord::Migration[5.2]
  def change
    add_column :invite_importers, :application_status, :string
  end
end
