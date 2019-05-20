class AddKundeColumnsToExportApplication < ActiveRecord::Migration[5.2]
  def change
    add_column :export_applications, :importer_address_line1, :string
    add_column :export_applications, :importer_address_line2, :string
    add_column :export_applications, :importer_company_registration_number, :string
    add_column :export_applications, :importer_rating, :string
    add_column :export_applications, :importer_rating_agency, :string
    add_column :export_applications, :importer_rating_issued_date, :string
    add_column :export_applications, :importer_mother_company, :string
    add_column :export_applications, :importer_company_corporate_form, :string
    add_column :export_applications, :importer_industry, :string
  end
end
