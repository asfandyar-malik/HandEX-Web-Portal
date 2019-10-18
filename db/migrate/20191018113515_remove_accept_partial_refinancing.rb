class RemoveAcceptPartialRefinancing < ActiveRecord::Migration[5.2]
  def change
    remove_column :export_applications, :accept_partial_refinancing
    remove_column :insurances, :accept_partial_refinancing
  end
end
