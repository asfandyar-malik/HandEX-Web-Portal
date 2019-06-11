class AddFixedInterestRateColumnToExportApplication < ActiveRecord::Migration[5.2]
  def change
    add_column :export_applications, :fixed_interest_rate, :string
    add_column :export_applications, :fixed_interest_rate_value, :string
  end
end
