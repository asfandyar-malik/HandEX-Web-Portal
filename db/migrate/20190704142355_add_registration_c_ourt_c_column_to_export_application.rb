class AddRegistrationCOurtCColumnToExportApplication < ActiveRecord::Migration[5.2]
  def change
    add_column :export_applications, :registration_court, :string
  end
end
