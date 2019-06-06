class AddColumnEntireProjectAmountToExportApplication < ActiveRecord::Migration[5.2]
  def change
    # BACK-388
    add_column :export_applications, :entire_project_amount, :string
  end
end
