class CreateOverallProjectFinancingDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :overall_project_financing_details do |t|
      t.string :subject
      t.integer :currency
      t.string :amount

      t.timestamps
    end
  end
end
