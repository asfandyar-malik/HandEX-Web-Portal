class AddColumnsToExporterApplication < ActiveRecord::Migration[5.2]
  def change
    add_column :export_applications, :exporter_address_line1, :string
    add_column :export_applications, :exporter_address_line2, :string
    add_column :export_applications, :exporter_tax_id, :string
    add_column :export_applications, :exporter_revenue, :string
    add_column :export_applications, :exporter_total_assets, :string
    add_column :export_applications, :exporter_last_fiscal_year, :string
    add_column :export_applications, :external_rating_available, :boolean
    add_column :export_applications, :exporter_rating, :string
    add_column :export_applications, :rating_agency, :string
    add_column :export_applications, :rating_issued_date, :string
  end
end
