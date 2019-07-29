class AddCustomerTypeToRegistrationForm < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :user_type, :string
    remove_column :users, :is_broker
  end
end
