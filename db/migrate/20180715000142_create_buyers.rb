class CreateBuyers < ActiveRecord::Migration[5.2]
  def change
    create_table :buyers do |t|
      t.string :name
      t.string :country
      t.string :street_address
      t.string :payment_terms
      t.string :shipment_terms
      t.integer :sales_past_12months
      t.integer :sales_projected_12months
      t.integer :credit_period
      t.string :credit_from
      t.string :years_selling_buyer
      t.string :invoicing_currency
      t.string :document_routing
      t.string :document_release
      t.boolean :related_party
      t.boolean :write_offs
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
