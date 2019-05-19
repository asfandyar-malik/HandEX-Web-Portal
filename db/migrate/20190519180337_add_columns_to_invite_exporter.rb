class AddColumnsToInviteExporter < ActiveRecord::Migration[5.2]
  def change
    add_column :invite_exporters, :user_id, :integer
    add_column :invite_exporters, :exporter_representative_firstname, :string
    add_column :invite_exporters, :exporter_email, :string
    add_column :invite_exporters, :exporter_telephone, :string
    add_column :invite_exporters, :exporter_broker_id, :string
  end
end
