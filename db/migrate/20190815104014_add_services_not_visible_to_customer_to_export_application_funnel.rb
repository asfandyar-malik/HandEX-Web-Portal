class AddServicesNotVisibleToCustomerToExportApplicationFunnel < ActiveRecord::Migration[5.2]
  def change
    add_column :export_applications, :services_not_visible_to_customer, :string
  end
end
