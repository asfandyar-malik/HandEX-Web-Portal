class RenameMultipleDeliveryToMultipleShipment < ActiveRecord::Migration[5.2]
  def change
      rename_table :multiple_deliveries, :multiple_shipments
  end
end
