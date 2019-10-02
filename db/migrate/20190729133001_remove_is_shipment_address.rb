class RemoveIsShipmentAddress < ActiveRecord::Migration[5.2]
  def change
    remove_column :insurances, :is_shipment_address
    remove_column :export_applications, :is_shipment_address
  end
end
