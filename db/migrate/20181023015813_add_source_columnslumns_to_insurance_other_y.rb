class AddSourceColumnslumnsToInsuranceOtherY < ActiveRecord::Migration[5.2]
  def change
    add_column :insurances, :ak_number, :string
    add_column :insurances, :company_name, :string
    add_column :insurances, :tax_number, :string
    add_column :insurances, :years_trading_without_hermes_cover, :string
    add_column :insurances, :experience_with_export_country, :string
    add_column :insurances, :adequate_claims_management, :string
  end
end
