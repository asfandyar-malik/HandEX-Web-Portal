class AddDefaultToUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :is_broker, :boolean, :default => false
  end
end
