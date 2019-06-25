class AddApplicationTypeToExportApplications < ActiveRecord::Migration[5.2]
  def change
    # Creating 'Zussamenfassung'
    add_column :export_applications, :application_type, :string
  end
end
