class DropAttachmentsTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :attachments
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
