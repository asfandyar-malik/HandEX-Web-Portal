class AddExporterStreetToInsurance < ActiveRecord::Migration[5.2]
  def change
    add_column :insurances, :exporter_company_street, :string
  end
end
