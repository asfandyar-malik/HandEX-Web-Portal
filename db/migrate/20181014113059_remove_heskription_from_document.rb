class RemoveHeskriptionFromDocument < ActiveRecord::Migration[5.2]
  def change
    remove_column :documents, :heskription
  end
end
