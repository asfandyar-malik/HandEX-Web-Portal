class CreateDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :documents do |t|
      t.boolean :belong_me
      t.boolean :defect_free
      t.boolean :delivered_specific_date
      t.integer :currency
      t.integer :grand_total_invoice_value
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end