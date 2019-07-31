class ReNameAttachmentsForExportApplicationAndInsurance < ActiveRecord::Migration[5.2]
  def change
    remove_attachment :export_applications, :self_disclosure
    remove_attachment :insurances, :self_disclosure
    remove_attachment :export_applications, :additional_document
    remove_attachment :insurances, :additional_document
    
    add_attachment :export_applications, :annual_financial_statement_importer_second_last
    add_attachment :insurances, :annual_financial_statement_importer_second_last
    add_attachment :export_applications, :export_contract_or_bills
    add_attachment :insurances, :export_contract_or_bills
  end
end
