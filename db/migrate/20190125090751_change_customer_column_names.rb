class ChangeCustomerColumnNames < ActiveRecord::Migration[5.2]
    def change
        rename_column :insurances, :customer_ak_number, :importer_ak_number
        rename_column :insurances, :customer_company_name, :importer_company_name
        rename_column :insurances, :customer_tax_number, :importer_tax_number
        rename_column :insurances, :customer_address, :importer_address
        rename_column :insurances, :customer_plz, :importer_plz
        rename_column :insurances, :customer_city, :importer_city
        rename_column :insurances, :customer_country, :importer_country
        
        rename_column :insurances, :customer_delivery_company_name, :importer_delivery_address_company_name
        rename_column :insurances, :customer_delivery_country, :importer_delivery_address_country
        
        rename_column :insurances, :customer_delivery_address, :importer_delivery_address_street
        rename_column :insurances, :customer_delivery_plz, :importer_delivery_address_plz
        rename_column :insurances, :customer_delivery_city, :importer_delivery_address_city

        rename_column :insurances, :no_relation_to_customer, :no_exporter_infleunce_on_importer_management
        rename_column :insurances, :yes_relation_to_customer, :yes_exporter_infleunce_on_importer_management
        rename_column :insurances, :relation_to_customer_explain, :explain_exporter_infleunce_on_importer_management
        
        rename_column :insurances, :yes_previous_payment_experience_with_customer, :yes_previous_payment_experience_with_importer
        rename_column :insurances, :no_previous_payment_experience_with_customer, :no_previous_payment_experience_with_importer
        rename_column :insurances, :explain_previous_payment_experience_with_customer, :explain_previous_payment_experience_with_importer
        rename_column :insurances, :ja_customer_counts_interest, :yes_charge_interest_to_importer
        rename_column :insurances, :no_customer_counts_interest, :no_charge_interest_to_importer
    end
end
