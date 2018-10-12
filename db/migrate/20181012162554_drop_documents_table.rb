class DropDocumentsTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :documents
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
