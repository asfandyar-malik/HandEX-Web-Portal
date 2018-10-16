class AddAttachmentInvoiceoneCompanyregistrationcertificateShareholdersagreementIdentificationdocumentshareholderExtradocToDocuments < ActiveRecord::Migration[5.2]
  def self.up
    change_table :documents do |t|
      t.attachment :invoiceone
      t.attachment :companyregistrationcertificate
      t.attachment :shareholdersagreement
      t.attachment :identificationdocumentshareholder
      t.attachment :extradoc
    end
  end

  def self.down
    remove_attachment :documents, :invoiceone
    remove_attachment :documents, :companyregistrationcertificate
    remove_attachment :documents, :shareholdersagreement
    remove_attachment :documents, :identificationdocumentshareholder
    remove_attachment :documents, :extradoc
  end
end
