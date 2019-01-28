class RemoveMoreColumnsInListings < ActiveRecord::Migration[5.2]
  def change
    remove_column :listings, :city
    remove_column :listings, :accommodates
  end
end
