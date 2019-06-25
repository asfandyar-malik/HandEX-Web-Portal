class AddColumnToExportApplication < ActiveRecord::Migration[5.2]
  def change
    # project_detailed_description
    add_column :export_applications, :project_detailed_description, :string
  end
end
