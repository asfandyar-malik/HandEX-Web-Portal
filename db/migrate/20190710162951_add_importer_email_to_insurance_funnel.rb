class AddImporterEmailToInsuranceFunnel < ActiveRecord::Migration[5.2]
  def change
    add_column :insurances, :importer_email, :string
  end
end
