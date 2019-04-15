class Insurance < ApplicationRecord
    belongs_to :user
    
    # validates :has_read_all_instructions, :acceptance => true
    # validates :read_privacy_policy, :acceptance => true
    # validates :accept_terms_conditions, :acceptance => true

    has_attached_file :self_disclosure, :storage => :cloudinary,  :cloudinary_resource_type => :image, :path => "insurances/:attachment/:id/:style/:filename",
                      styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :self_disclosure, content_type: ['image/jpeg', 'image/png', 'image/gif', 'application/pdf']

    has_attached_file :annual_financial_statement_importer, :storage => :cloudinary, :cloudinary_resource_type => :image, :path => "insurances/:attachment/:id/:style/:filename",
                      styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :annual_financial_statement_importer, content_type: ['image/jpeg', 'image/png', 'image/gif', 'application/pdf']

    has_attached_file :credit_bureaus_importer, :storage => :cloudinary, :cloudinary_resource_type => :image,  :path => "insurances/:attachment/:id/:style/:filename",
                      styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :credit_bureaus_importer, content_type: ['image/jpeg', 'image/png', 'image/gif', 'application/pdf']

    has_attached_file :environment_social_audit, :storage => :cloudinary, :cloudinary_resource_type => :image,  :path => "insurances/:attachment/:id/:style/:filename",
                      styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :environment_social_audit, content_type: ['image/jpeg', 'image/png', 'image/gif', 'application/pdf']

    has_attached_file :project_memorandum_exporter_business, :storage => :cloudinary, :cloudinary_resource_type => :image,  :path => "insurances/:attachment/:id/:style/:filename",
                      styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :project_memorandum_exporter_business, content_type: ['image/jpeg', 'image/png', 'image/gif', 'application/pdf']

    has_attached_file :additional_document, :storage => :cloudinary, :cloudinary_resource_type => :image,  :path => "insurances/:attachment/:id/:style/:filename",
                      styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :additional_document, content_type: ['image/jpeg', 'image/png', 'image/gif', 'application/pdf']
    
end