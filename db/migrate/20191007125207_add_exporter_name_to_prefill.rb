class AddExporterNameToPrefill < ActiveRecord::Migration[5.2]
  def change
    add_column :prefills, :exporter_name, :string
  end
end