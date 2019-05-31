class AddDeliveryAddresInformation < ActiveRecord::Migration[5.2]
  def change
    add_column :insurances, :is_delivered_at_this_address, :boolean, default: false
  end
end