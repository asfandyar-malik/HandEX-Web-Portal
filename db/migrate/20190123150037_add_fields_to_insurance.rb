class AddFieldsToInsurance < ActiveRecord::Migration[5.2]
  def change
    add_column :insurances, :exporter_company_name, :string
    add_column :insurances, :exporter_email, :string
    add_column :insurances, :exporter_telephone, :string
  end
end
