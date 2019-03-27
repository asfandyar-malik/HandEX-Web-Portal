class AddAttachmentInvoiceToDocuments < ActiveRecord::Migration[5.2]
  def self.up
    change_table :documents do |t|
      t.attachment :invoice
    end
  end

  def self.down
    remove_attachment :documents, :invoice
  end
end