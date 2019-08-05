class InviteImporterBooleanSave < ActiveRecord::Migration[5.2]
  def change
    add_column :export_applications, :invited_customer, :boolean
  end
end