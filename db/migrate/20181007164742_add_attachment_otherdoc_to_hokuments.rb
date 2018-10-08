class AddAttachmentOtherdocToHokuments < ActiveRecord::Migration[5.2]
  def self.up
    change_table :hokuments do |t|
      t.attachment :otherdoc
    end
  end

  def self.down
    remove_attachment :hokuments, :otherdoc
  end
end
