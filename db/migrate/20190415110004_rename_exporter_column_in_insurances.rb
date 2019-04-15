class RenameExporterColumnInInsurances < ActiveRecord::Migration[5.2]
  def change
      rename_column :insurances, :exporte_representative_department, :exporter_representative_department
  end
end