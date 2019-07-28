class ImporterInformation < ApplicationRecord
	belongs_to :user
	
	has_attached_file :annual_financial_statement_importer_last, :storage => :cloudinary,  :cloudinary_resource_type => :image, :path => "importer_informations/:attachment/:id/:style/:filename",
	                  styles: { medium: "300x300>", thumb: "100x100>" }
	validates_attachment_content_type :annual_financial_statement_importer_last, content_type: ['image/jpeg', 'image/png', 'image/gif', 'application/pdf']
	
	has_attached_file :annual_financial_statement_importer_second_last, :storage => :cloudinary,  :cloudinary_resource_type => :image, :path => "importer_informations/:attachment/:id/:style/:filename",
	                  styles: { medium: "300x300>", thumb: "100x100>" }
	validates_attachment_content_type :annual_financial_statement_importer_second_last, content_type: ['image/jpeg', 'image/png', 'image/gif', 'application/pdf']
	
	has_attached_file :credit_bureaus_importer, :storage => :cloudinary,  :cloudinary_resource_type => :image, :path => "importer_informations/:attachment/:id/:style/:filename",
	                  styles: { medium: "300x300>", thumb: "100x100>" }
	validates_attachment_content_type :credit_bureaus_importer, content_type: ['image/jpeg', 'image/png', 'image/gif', 'application/pdf']

end