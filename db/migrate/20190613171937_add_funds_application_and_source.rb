class AddFundsApplicationAndSource < ActiveRecord::Migration[5.2]
  def change
    create_table :application_of_funds do |t|
      t.string :description
      t.string :currency
      t.integer :amount
      t.belongs_to :export_application, foreign_key: true
      t.timestamps
    end
    create_table :source_of_funds do |t|
      t.string :description
      t.string :currency
      t.integer :amount
      t.belongs_to :export_application, foreign_key: true
      t.timestamps
    end
  end
end
