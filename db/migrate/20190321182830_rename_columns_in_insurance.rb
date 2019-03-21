class RenameColumnsInInsurance < ActiveRecord::Migration[5.2]
  def change
    rename_column :insurances, :yes_exporter_infleunce_on_importer_management, :yes_exporter_influence_on_importer_management
    rename_column :insurances, :no_exporter_infleunce_on_importer_management, :no_exporter_influence_on_importer_management
    rename_column :insurances, :explain_exporter_infleunce_on_importer_management, :explain_exporter_influence_on_importer_management
  end
end
