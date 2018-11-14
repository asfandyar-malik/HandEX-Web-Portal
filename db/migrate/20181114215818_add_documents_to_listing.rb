class AddDocumentsToListing < ActiveRecord::Migration[5.2]
  def self.up
    change_table :listings do |t|
      t.attachment :self_assessment_document
      t.attachment :financial_statement_your_customer_document
      t.attachment :customer_information_document
      t.attachment :environment_social_information_document
      t.attachment :project_memorandum_document
      t.attachment :other_document
    end
  end
  
  def self.down
    remove_attachment :listings, :self_assessment_document
    remove_attachment :listings, :financial_statement_your_customer_document
    remove_attachment :listings, :customer_information_document
    remove_attachment :listings, :environment_social_information_document
    remove_attachment :listings, :bproject_memorandum_documentalancesheet
    remove_attachment :listings, :other_document
  end
end
