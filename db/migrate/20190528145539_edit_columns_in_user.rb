class EditColumnsInUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :company_name, :string
    add_column :users, :is_broker, :boolean
    remove_column :users, :fullname
    remove_column :users, :image
    remove_column :users, :provider
  end
end
