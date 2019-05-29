class AddMoreDetailsToCredits < ActiveRecord::Migration[5.2]
  def change
    add_column :credits, :proportion_of_goods_overhauled_aborad, :string
    add_column :credits, :rating_agency, :string
    add_column :credits, :rating_issued_date, :string
    add_column :credits, :remaining_life, :string
    add_column :credits, :sensitive_area_type, :string
    add_column :credits, :why_good_overhauled_abroad, :string
    add_column :credits, :manufacture_year, :string
    add_column :credits, :partly_rawgoods_supplier_amount, :string
    add_column :credits, :importer_address_line1, :string
    add_column :credits, :importer_address_line2, :string
    add_column :credits, :importer_company_corporate_form, :string
    add_column :credits, :importer_company_registration_number, :string
    add_column :credits, :importer_industry, :string
    add_column :credits, :importer_mother_company, :string
    add_column :credits, :importer_rating, :string
    add_column :credits, :importer_rating_agency, :string
    add_column :credits, :importer_rating_issued_date, :string
    add_column :credits, :explain_product_service, :string
    add_column :credits, :exporter_address_line1, :string
    add_column :credits, :exporter_address_line2, :string
    add_column :credits, :exporter_last_fiscal_year, :string
    add_column :credits, :exporter_rating, :string
    add_column :credits, :exporter_revenue, :string
    add_column :credits, :exporter_tax_id, :string
    add_column :credits, :exporter_total_assets, :string
    add_column :credits, :external_rating_available, :string
    add_column :credits, :goods_overhaul_country, :string
    add_column :credits, :describe_why_overhault_didnot_take_in_germany, :string
    add_column :credits, :all_rawgoods_supplier_amount, :string
  end
end
