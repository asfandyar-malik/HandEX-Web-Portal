class AddVariableInterestRateToExportApplication < ActiveRecord::Migration[5.2]
  def change
    add_column :export_applications, :variable_interest_rate, :string
  end
end
