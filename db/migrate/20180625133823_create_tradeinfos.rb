class CreateTradeinfos < ActiveRecord::Migration[5.2]
  def change
    create_table :tradeinfos do |t|
      t.string :goods
      t.string :category
      t.string :companyName
      t.string :companyEmail
      t.string :companyPhone
      t.string :importerName
      t.string :importerEmail
      t.string :taxId

      t.timestamps
    end
  end
end
