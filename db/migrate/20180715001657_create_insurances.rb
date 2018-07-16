class CreateInsurances < ActiveRecord::Migration[5.2]
  def change
    create_table :insurances do |t|
      t.references :user, foreign_key: true
      t.string :insurance_cover
      t.string :country_category
      t.string :buyer_category

      t.timestamps
    end
  end
end
