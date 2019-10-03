class AddColumnsToWebId < ActiveRecord::Migration[5.2]
  def change
    add_column :webids, :name, :string
    add_column :webids, :email, :string
    add_column :webids, :status, :string
    add_column :webids, :link, :string
  end
end
