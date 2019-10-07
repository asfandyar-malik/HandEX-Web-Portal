class AddDocusignStepIntoExportApplication < ActiveRecord::Migration[5.2]
  def change
    add_column :insurances, :is_docusign_step, :boolean, :default => false
    add_column :export_applications, :is_docusign_step, :boolean, :default => false
  end
end