class AddAttachmentsToOfficalDocument < ActiveRecord::Migration[5.2]
  def self.up
    change_table :officialdocuments do |t|
      t.attachment :invoiceone
      t.attachment :companyregistrationcertificate
      t.attachment :shareholdersagreement
      t.attachment :identificationdocumentshareholder
      t.attachment :extradoc
    end
  end

  def self.down
    remove_attachment :officialdocuments, :invoiceone
    remove_attachment :officialdocuments, :companyregistrationcertificate
    remove_attachment :officialdocuments, :shareholdersagreement
    remove_attachment :officialdocuments, :identificationdocumentshareholder
    remove_attachment :officialdocuments, :extradoc
  end
end
