class AddUserIdToPrefills < ActiveRecord::Migration[5.2]
  def change
    add_column :prefills, :user_id, :integer
  end
end
