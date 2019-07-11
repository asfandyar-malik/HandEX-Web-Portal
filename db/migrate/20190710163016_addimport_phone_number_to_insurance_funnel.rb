class AddimportPhoneNumberToInsuranceFunnel < ActiveRecord::Migration[5.2]
  def change
    add_column :insurances, :importer_phone_number, :string
  end
end
