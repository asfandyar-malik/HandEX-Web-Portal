class RemoveListingJsonFromListings < ActiveRecord::Migration[5.2]
  def change
    remove_column :listings, :listing_json, :jsonb
  end
end
