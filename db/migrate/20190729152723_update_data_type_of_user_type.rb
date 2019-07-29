class UpdateDataTypeOfUserType < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :user_type
    add_column :users, :user_type, :integer
  end
end
