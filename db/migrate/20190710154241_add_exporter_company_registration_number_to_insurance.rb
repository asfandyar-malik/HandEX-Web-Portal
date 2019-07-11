class AddExporterCompanyRegistrationNumberToInsurance < ActiveRecord::Migration[5.2]
  def change
    add_column :insurances, :exporter_company_registration_number, :string
  end
end
