class DropInvoicesTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :invoices
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
