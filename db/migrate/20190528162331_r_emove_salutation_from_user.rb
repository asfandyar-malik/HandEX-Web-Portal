class REmoveSalutationFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :salutation
  end
end
