class AddAttachmentsToImporterInformation < ActiveRecord::Migration[5.2]
	def self.up
	  change_table :importer_informations do |t|
	    t.attachment :annual_financial_statement_importer_last
	    t.attachment :annual_financial_statement_importer_second_last
	    t.attachment :credit_bureaus_importer
	  end
	end
	
	def self.down
	  remove_attachment :importer_informations, :annual_financial_statement_importer_last
	  remove_attachment :importer_informations, :annual_financial_statement_importer_second_last
	  remove_attachment :importer_informations, :credit_bureaus_importer
	end
end
