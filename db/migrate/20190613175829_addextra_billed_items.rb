class AddextraBilledItems < ActiveRecord::Migration[5.2]
  def change
    create_table :extra_billed_items do |t|
      t.string :description
      t.string :currency
      t.integer :amount
      t.belongs_to :export_application, foreign_key: true
      t.timestamps
    end

    remove_column :export_applications, :other_billed_items_in_contract_currency
    remove_column :export_applications, :other_billed_items_in_contract_amount
    remove_column :export_applications, :describe_other_billed_items_in_contract
    
  end
end
