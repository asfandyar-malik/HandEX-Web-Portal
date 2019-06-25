class AddSalutionToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :salutation, :string
  end
end