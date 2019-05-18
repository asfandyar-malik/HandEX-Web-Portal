class CreateExportApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :export_applications do |t|

      t.timestamps
    end
  end
end
