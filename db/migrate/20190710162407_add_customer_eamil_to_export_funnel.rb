class AddCustomerEamilToExportFunnel < ActiveRecord::Migration[5.2]
  def change
    add_column :export_applications, :importer_email, :string
  end
end
