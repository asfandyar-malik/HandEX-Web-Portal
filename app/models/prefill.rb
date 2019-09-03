class Prefill < ApplicationRecord
	
	belongs_to :user
	
	has_attached_file :supply_contract, :storage => :cloudinary, :cloudinary_resource_type => :image, :path => "prefills/:attachment/:id/:style/:filename",
	                  styles: { medium: "300x300>", thumb: "100x100>" }
	validates_attachment_content_type :supply_contract, content_type: ['image/jpeg', 'image/png', 'image/gif', 'application/pdf']
	
	has_attached_file :document_one, :storage => :cloudinary, :cloudinary_resource_type => :image, :path => "prefills/:attachment/:id/:style/:filename",
	                  styles: { medium: "300x300>", thumb: "100x100>" }
	validates_attachment_content_type :document_one, content_type: ['image/jpeg', 'image/png', 'image/gif', 'application/pdf']
	
	has_attached_file :document_two, :storage => :cloudinary, :cloudinary_resource_type => :image, :path => "prefills/:attachment/:id/:style/:filename",
	                  styles: { medium: "300x300>", thumb: "100x100>" }
	validates_attachment_content_type :document_two, content_type: ['image/jpeg', 'image/png', 'image/gif', 'application/pdf']
	
	has_attached_file :document_three, :storage => :cloudinary, :cloudinary_resource_type => :image, :path => "prefills/:attachment/:id/:style/:filename",
	                  styles: { medium: "300x300>", thumb: "100x100>" }
	validates_attachment_content_type :document_three, content_type: ['image/jpeg', 'image/png', 'image/gif', 'application/pdf']
	
	has_attached_file :document_four, :storage => :cloudinary, :cloudinary_resource_type => :image, :path => "prefills/:attachment/:id/:style/:filename",
	                  styles: { medium: "300x300>", thumb: "100x100>" }
	validates_attachment_content_type :document_four, content_type: ['image/jpeg', 'image/png', 'image/gif', 'application/pdf']
	
	has_attached_file :document_five, :storage => :cloudinary, :cloudinary_resource_type => :image, :path => "prefills/:attachment/:id/:style/:filename",
	                  styles: { medium: "300x300>", thumb: "100x100>" }
	validates_attachment_content_type :document_five, content_type: ['image/jpeg', 'image/png', 'image/gif', 'application/pdf']
	
end
