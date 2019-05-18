class DropImportsTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :imports
  end
end
