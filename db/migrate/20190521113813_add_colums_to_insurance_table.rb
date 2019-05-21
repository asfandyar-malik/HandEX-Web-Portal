class AddColumsToInsuranceTable < ActiveRecord::Migration[5.2]
  def change
    add_column :insurances, :explain_product_service, :string
    add_column :insurances, :sensitive_area_type, :string
    add_column :insurances, :remaining_life, :string
    add_column :insurances, :manufacture_year, :string
    add_column :insurances, :goods_overhaul_country, :string
    add_column :insurances, :why_good_overhauled_abroad, :string
    add_column :insurances, :proportion_of_goods_overhauled_aborad, :string
    add_column :insurances, :describe_why_overhault_didnot_take_in_germany, :string
    add_column :insurances, :all_rawgoods_supplier_amount, :string
    add_column :insurances, :partly_rawgoods_supplier_amount, :string
    add_column :insurances, :importer_address_line1, :string
    add_column :insurances, :importer_address_line2, :string
    add_column :insurances, :importer_company_registration_number, :string
    add_column :insurances, :importer_rating, :string
    add_column :insurances, :importer_rating_agency, :string
    add_column :insurances, :importer_rating_issued_date, :string
    add_column :insurances, :importer_mother_company, :string
    add_column :insurances, :importer_company_corporate_form, :string
    add_column :insurances, :importer_industry, :string
    add_column :insurances, :exporter_address_line1, :string
    add_column :insurances, :exporter_address_line2, :string
    add_column :insurances, :exporter_tax_id, :string
    add_column :insurances, :exporter_revenue, :string
    add_column :insurances, :exporter_total_assets, :string
    add_column :insurances, :exporter_last_fiscal_year, :string
    add_column :insurances, :external_rating_available, :boolean
    add_column :insurances, :exporter_rating, :string
    add_column :insurances, :rating_agency, :string
    add_column :insurances, :rating_issued_date, :string
  end
end
