class AddAttachmentInvoicetwoToHokuments < ActiveRecord::Migration[5.2]
  def self.up
    change_table :hokuments do |t|
      t.attachment :invoicetwo
    end
  end

  def self.down
    remove_attachment :hokuments, :invoicetwo
  end
end
