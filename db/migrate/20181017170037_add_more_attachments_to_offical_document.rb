class AddMoreAttachmentsToOfficalDocument < ActiveRecord::Migration[5.2]
  def self.up
    change_table :officialdocuments do |t|
      t.attachment :invoicetwo
      t.attachment :balancesheet
    end
  end

  def self.down
    remove_attachment :officialdocuments, :invoicetwo
    remove_attachment :officialdocuments, :balancesheet
  end
end