class AddWebIdStatusToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :webid_identification, :boolean
  end
end