class AddUserIdToImports < ActiveRecord::Migration[5.2]
  def change
    add_column :imports, :user_id, :integer
  end
end
