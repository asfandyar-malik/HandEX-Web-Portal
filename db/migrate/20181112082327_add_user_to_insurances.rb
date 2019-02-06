class AddUserToListing < ActiveRecord::Migration[5.2]
  def change
    add_reference :insurances, :user, foreign_key: true
  end
end
