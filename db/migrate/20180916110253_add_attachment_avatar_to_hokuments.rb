class AddAttachmentAvatarToHokuments < ActiveRecord::Migration[5.2]
  def self.up
    change_table :hokuments do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :documents, :avatar
  end
end