class UpdateApplicationTypeExportApplication < ActiveRecord::Migration[5.2]
  def self.up
    ExportApplication.update_all("application_type='export_application'")
  end

  def self.down
  end
end
