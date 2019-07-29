class RemoveIsShipmentAddressFromImporterInformation < ActiveRecord::Migration[5.2]
  def change
    remove_column :importer_informations, :is_shipment_address
  end
end