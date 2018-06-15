class CreateInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :invoices do |t|
      t.boolean :belong_me
      t.boolean :defect_free
      t.boolean :delivered_specific_date
      t.integer :currency
      t.integer :grand_total_invoice_value

      t.timestamps
    end
  end
end
