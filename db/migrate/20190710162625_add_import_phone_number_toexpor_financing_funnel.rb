class AddImportPhoneNumberToexporFinancingFunnel < ActiveRecord::Migration[5.2]
  def change
    add_column :export_applications, :importer_phone_number, :string
  end
end
