class RenamingColumnsExportApplication < ActiveRecord::Migration[5.2]
  def change
    rename_column :export_applications, :importer_company_corporate_form, :importer_mother_company_corporate_form
    add_column :export_applications, :importer_mother_company_industry, :string

  end
end
