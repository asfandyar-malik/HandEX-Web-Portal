class AddDeliveryAddresInformationToExportApplications < ActiveRecord::Migration[5.2]
  def change
    add_column :export_applications, :is_delivered_at_this_address, :boolean, default: false
  end
end
