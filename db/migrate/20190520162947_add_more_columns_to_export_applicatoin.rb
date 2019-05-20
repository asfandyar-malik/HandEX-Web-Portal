class AddMoreColumnsToExportApplicatoin < ActiveRecord::Migration[5.2]
  def change
    add_column :export_applications, :explain_product_service, :string
    add_column :export_applications, :sensitive_area_type, :string
    add_column :export_applications, :remaining_life, :string
    add_column :export_applications, :manufacture_year, :string
    add_column :export_applications, :goods_overhaul_country, :string
    add_column :export_applications, :why_good_overhauled_abroad, :string
    add_column :export_applications, :proportion_of_goods_overhauled_aborad, :string
    add_column :export_applications, :describe_why_overhault_didnot_take_in_germany, :string
    add_column :export_applications, :all_rawgoods_supplier_amount, :string
    add_column :export_applications, :partly_rawgoods_supplier_amount, :string
  end
end
