class RemoveListingJsonFromListings < ActiveRecord::Migration[5.2]
  def change
    remove_column :insurances, :listing_json, :jsonb
  end
end
