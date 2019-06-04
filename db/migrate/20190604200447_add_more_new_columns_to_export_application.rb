class AddMoreNewColumnsToExportApplication < ActiveRecord::Migration[5.2]
  def change
    add_column :export_applications, :is_fully_responsible_for_project, :string
  end
end
