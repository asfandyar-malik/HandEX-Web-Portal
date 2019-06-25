class AddInterestCalculationDescriptionToExportApplication < ActiveRecord::Migration[5.2]
  def change
    add_column :export_applications, :interest_calculation_description, :string
  end
end
