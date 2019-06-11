class ExportApplication < ApplicationRecord
    belongs_to :user
    has_many :supplies_from_foreign_origins, dependent: :destroy
    
    accepts_nested_attributes_for :supplies_from_foreign_origins,
                                  allow_destroy: true,
                                  reject_if: proc { |att| att['all_rawgoods_supplier_amount'].blank? }

    has_attached_file :self_disclosure, :storage => :cloudinary,  :cloudinary_resource_type => :image, :path => "export_applications/:attachment/:id/:style/:filename",
                      styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :self_disclosure, content_type: ['image/jpeg', 'image/png', 'image/gif', 'application/pdf']

    has_attached_file :annual_financial_statement_importer, :storage => :cloudinary, :cloudinary_resource_type => :image, :path => "export_applications/:attachment/:id/:style/:filename",
                      styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :annual_financial_statement_importer, content_type: ['image/jpeg', 'image/png', 'image/gif', 'application/pdf']

    has_attached_file :credit_bureaus_importer, :storage => :cloudinary, :cloudinary_resource_type => :image,  :path => "export_applications/:attachment/:id/:style/:filename",
                      styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :credit_bureaus_importer, content_type: ['image/jpeg', 'image/png', 'image/gif', 'application/pdf']

    has_attached_file :environment_social_audit, :storage => :cloudinary, :cloudinary_resource_type => :image,  :path => "export_applications/:attachment/:id/:style/:filename",
                      styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :environment_social_audit, content_type: ['image/jpeg', 'image/png', 'image/gif', 'application/pdf']

    has_attached_file :project_memorandum_exporter_business, :storage => :cloudinary, :cloudinary_resource_type => :image,  :path => "export_applications/:attachment/:id/:style/:filename",
                      styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :project_memorandum_exporter_business, content_type: ['image/jpeg', 'image/png', 'image/gif', 'application/pdf']

    has_attached_file :additional_document, :storage => :cloudinary, :cloudinary_resource_type => :image,  :path => "export_applications/:attachment/:id/:style/:filename",
                      styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :additional_document, content_type: ['image/jpeg', 'image/png', 'image/gif', 'application/pdf']
end