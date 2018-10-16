class RemoveOldAttachmentsFromDocument < ActiveRecord::Migration[5.2]
  def change
    remove_attachment :documents, :avatar, :otherdoc
  end
end
