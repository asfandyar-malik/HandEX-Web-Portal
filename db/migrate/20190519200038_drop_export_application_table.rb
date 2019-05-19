class DropExportApplicationTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :export_applications
  end
end
