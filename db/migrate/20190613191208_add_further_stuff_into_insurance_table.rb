class AddFurtherStuffIntoInsuranceTable < ActiveRecord::Migration[5.2]
  def change
    add_column :insurances, :entire_project_amount, :string
    add_column :insurances, :entire_project_currency, :string
    rename_column :export_applications, :entire_project_amount_currency, :entire_project_currency
  end
end
