class UpdateMoreColumnsInInsurances < ActiveRecord::Migration[5.2]
  def change
    rename_column :insurances, :total_delivery_value, :total_delivery_value_excluding_servicing
    rename_column :insurances, :importer_address, :importer_street_hno
    rename_column :insurances, :exporting_to_private_sector, :is_exporting_to_private_sctor
    rename_column :insurances, :exporting_to_public_sector, :is_exporting_to_public_sector
    rename_column :insurances, :importer_shipment_street, :importer_shipment_street_hno
    rename_column :insurances, :agreed_payments_currency_payment_term_mid, :agreed_prepayment_payment_term_mid
    rename_column :insurances, :exporter_street, :exporter_street_hno
    
  end
end
