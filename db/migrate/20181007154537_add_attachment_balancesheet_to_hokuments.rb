class AddAttachmentBalancesheetToHokuments < ActiveRecord::Migration[5.2]
  def self.up
    change_table :hokuments do |t|
      t.attachment :balancesheet
    end
  end

  def self.down
    remove_attachment :hokuments, :balancesheet
  end
end
