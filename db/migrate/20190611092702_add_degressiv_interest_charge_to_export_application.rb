class AddDegressivInterestChargeToExportApplication < ActiveRecord::Migration[5.2]
  def change
    add_column :export_applications, :degressive_interest_rate, :string
  end
end
