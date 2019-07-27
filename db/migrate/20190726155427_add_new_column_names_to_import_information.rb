class AddNewColumnNamesToImportInformation < ActiveRecord::Migration[5.2]
  def change
    add_column :importer_informations, :importer_company_name, :string
    add_column :importer_informations, :importer_street_hno, :string
    add_column :importer_informations, :importer_plz, :string
    add_column :importer_informations, :importer_city, :string
    
    add_column :importer_informations, :importer_country, :string
    add_column :importer_informations, :is_shipment_address, :string
    add_column :importer_informations, :importer_shipment_company_name, :string
    add_column :importer_informations, :importer_shipment_country, :string
    add_column :importer_informations, :importer_shipment_street_hno, :string
    add_column :importer_informations, :importer_shipment_plz, :string
    add_column :importer_informations, :importer_shipment_city, :string
    add_column :importer_informations, :has_significant_influence_on_importer_management, :string
    add_column :importer_informations, :explain_exporter_influence_on_importer_management, :string
    add_column :importer_informations, :has_payment_experience_with_importer, :string
    add_column :importer_informations, :explain_previous_payment_experience_with_importer, :string
    add_column :importer_informations, :exporter_offers_servicing_for_goods, :string
    add_column :importer_informations, :importer_email, :string
    add_column :importer_informations, :importer_phone_number, :string
    add_column :importer_informations, :importer_address_line1, :string
    add_column :importer_informations, :importer_address_line2, :string

  end
end