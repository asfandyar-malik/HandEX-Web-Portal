class AddSourceColumnslumnsToInsuranceOtherYx < ActiveRecord::Migration[5.2]
  def change
    add_column :insurances, :employees_count, :string
    add_column :insurances, :revenue_last_year, :string
  end
end
