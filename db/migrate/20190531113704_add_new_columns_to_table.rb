class AddNewColumnsToTable < ActiveRecord::Migration[5.2]
  def change
    add_column :export_applications, :importer_tax_id, :string
    add_column :export_applications, :explain_sensitive_area_type, :string
    add_column :export_applications, :explain_special_structure, :string
    add_column :export_applications, :exporter_date_founded, :string
  end
end
