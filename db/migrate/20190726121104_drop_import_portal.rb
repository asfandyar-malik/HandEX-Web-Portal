class DropImportPortal < ActiveRecord::Migration[5.2]
  def change
    drop_table :invite_importers
  end
end
