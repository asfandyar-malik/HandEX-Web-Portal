class AddNewFieldsToListings < ActiveRecord::Migration[5.2]
  def change
    add_column :insurances, :city, :string
    add_column :insurances, :country, :string
    add_column :insurances, :accommodates, :string
    add_column :insurances, :price, :string
    add_column :insurances, :home, :string
    add_column :insurances, :appartment, :string
    add_column :insurances, :place_good_for, :string
    add_column :insurances, :air_conditioning, :string
    add_column :insurances, :wifi, :string
    add_column :insurances, :breakfast, :string
    add_column :insurances, :description, :text
  end
end
