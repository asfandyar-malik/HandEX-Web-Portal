class RemoveColumnNamesInListings < ActiveRecord::Migration[5.2]
  def change
    remove_column :listings, :your_company_name
    remove_column :listings, :company_address
    remove_column :listings, :country
    remove_column :listings, :home
    remove_column :listings, :exporter_company_representative
    remove_column :listings, :appartment
    remove_column :listings, :place_good_for
    remove_column :listings, :air_conditioning
    remove_column :listings, :wifi
    remove_column :listings, :description
    remove_column :listings, :ak_number
    remove_column :listings, :company_name
    remove_column :listings, :tax_number
    remove_column :listings, :years_trading_without_hermes_cover
  end
end
