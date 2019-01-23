class AddFieldsToListing < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :exporter_company_name, :string
    add_column :listings, :exporter_email, :string
    add_column :listings, :exporter_telephone, :string
  end
end
