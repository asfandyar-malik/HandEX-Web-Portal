class AddOneColumnsToListings < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :country_category, :string
  end
end
