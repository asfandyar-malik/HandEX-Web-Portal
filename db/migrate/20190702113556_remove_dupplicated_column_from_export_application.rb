class RemoveDupplicatedColumnFromExportApplication < ActiveRecord::Migration[5.2]
  def change
    remove_column :export_applications, :delivery_doesnt_affects_sensitive_areas
  end
end
