class AddExporterCompanyRegistrationNumber < ActiveRecord::Migration[5.2]
  def change
    add_column :export_applications, :exporter_company_registration_number, :string
  end
end
