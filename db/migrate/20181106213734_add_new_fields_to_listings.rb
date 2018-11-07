class AddNewFieldsToListings < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :city, :string
    add_column :listings, :country, :string
    add_column :listings, :accommodates, :string
    add_column :listings, :price, :string
    add_column :listings, :home, :string
    add_column :listings, :appartment, :string
    add_column :listings, :place_good_for, :string
    add_column :listings, :air_conditioning, :string
    add_column :listings, :wifi, :string
    add_column :listings, :breakfast, :string
    add_column :listings, :description, :text
  end
end
