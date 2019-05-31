class AddNewColumnsToExportApplicationss < ActiveRecord::Migration[5.2]
  def change
    add_column :export_applications, :is_company_controlled_by_mother_company, :boolean, :default => false
  end
end
