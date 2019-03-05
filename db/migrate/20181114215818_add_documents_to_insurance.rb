class AddDocumentsToInsurance < ActiveRecord::Migration[5.2]
  def self.up
    change_table :insurances do |t|
      t.attachment :self_assessment_document
      t.attachment :financial_statement_your_customer_document
      t.attachment :customer_information_document
      t.attachment :environment_social_information_document
      t.attachment :project_memorandum_document
      t.attachment :other_document
    end
  end
  
  def self.down
    remove_attachment :insurances, :self_assessment_document
    remove_attachment :insurances, :financial_statement_your_customer_document
    remove_attachment :insurances, :customer_information_document
    remove_attachment :insurances, :environment_social_information_document
    remove_attachment :insurances, :bproject_memorandum_documentalancesheet
    remove_attachment :insurances, :other_document
  end
end
