class AddUserToHokuments < ActiveRecord::Migration[5.2]
  def change
    add_reference :hokuments, :user, foreign_key: true
  end
end
