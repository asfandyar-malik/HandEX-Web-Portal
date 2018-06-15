class CreateDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :documents do |t|
      t.string :document_type
      t.string :year
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end