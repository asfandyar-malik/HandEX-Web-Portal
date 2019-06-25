class AddInterestValueAndCurrencyToExportApplication < ActiveRecord::Migration[5.2]
  def change
    add_column :export_applications, :interest_currency, :string
    add_column :export_applications, :interest_value, :string
  end
end
