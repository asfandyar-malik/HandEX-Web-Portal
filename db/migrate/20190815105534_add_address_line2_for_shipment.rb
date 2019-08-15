class AddAddressLine2ForShipment < ActiveRecord::Migration[5.2]
  def change
    add_column :export_applications, :importer_shipment_address_line2, :string
    add_column :insurances, :importer_shipment_address_line2, :string
  end
end
