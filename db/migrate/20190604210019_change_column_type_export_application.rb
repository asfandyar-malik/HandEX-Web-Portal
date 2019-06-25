class ChangeColumnTypeExportApplication < ActiveRecord::Migration[5.2]
  def change
    remove_column :export_applications, :is_fully_responsible_for_project
    add_column :export_applications, :is_fully_responsible_for_project, :boolean
  end
 end
