class RemoveColumnNamesInInsurances < ActiveRecord::Migration[5.2]
  def change
    remove_column :insurances, :your_company_name
    remove_column :insurances, :company_address
    remove_column :insurances, :country
    remove_column :insurances, :home
    remove_column :insurances, :appartment
    remove_column :insurances, :place_good_for
    remove_column :insurances, :air_conditioning
    remove_column :insurances, :wifi
    remove_column :insurances, :description
    remove_column :insurances, :ak_number
    remove_column :insurances, :company_name
    remove_column :insurances, :tax_number
    remove_column :insurances, :years_trading_without_hermes_cover
  end
end
