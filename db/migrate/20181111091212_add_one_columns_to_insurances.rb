class AddOneColumnsToInsurances < ActiveRecord::Migration[5.2]
  def change
    add_column :insurances, :country_category, :string
  end
end
