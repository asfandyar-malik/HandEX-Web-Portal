class ExportApplication < ApplicationRecord
    belongs_to :user

    has_many :invite_importers, dependent: :destroy
    has_many :supplies_from_foreign_origins, dependent: :destroy
    has_many :guarantees, dependent: :destroy
    has_many :agreed_payments, dependent: :destroy
    has_many :agreed_payment_mid_longs, dependent: :destroy
    has_many :multiple_shipments, dependent: :destroy
    has_many :source_of_funds, dependent: :destroy
    has_many :application_of_funds, dependent: :destroy
    has_many :extra_billed_items, dependent: :destroy
    has_many :special_repayment_profiles, dependent: :destroy
    has_many :peps, dependent: :destroy

    accepts_nested_attributes_for :invite_importers,
                                  allow_destroy: true

    accepts_nested_attributes_for :supplies_from_foreign_origins,
                                  allow_destroy: true

    accepts_nested_attributes_for :guarantees,
                                  allow_destroy: true

    accepts_nested_attributes_for :agreed_payments,
                                  allow_destroy: true

    accepts_nested_attributes_for :agreed_payment_mid_longs,
                                  allow_destroy: true

    accepts_nested_attributes_for :multiple_shipments,
                                  allow_destroy: true

    accepts_nested_attributes_for :source_of_funds,
                                  allow_destroy: true

    accepts_nested_attributes_for :application_of_funds,
                                  allow_destroy: true

    accepts_nested_attributes_for :extra_billed_items,
                                  allow_destroy: true

    accepts_nested_attributes_for :special_repayment_profiles,
                                  allow_destroy: true

    accepts_nested_attributes_for :peps,
                                  allow_destroy: true
    
    has_attached_file :annual_financial_statement_importer, :storage => :cloudinary, :cloudinary_resource_type => :image, :path => "export_applications/:attachment/:id/:style/:filename",
                      styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :annual_financial_statement_importer, content_type: ['image/jpeg', 'image/png', 'image/gif', 'application/pdf']
    
    has_attached_file :annual_financial_statement_importer_second_last, :storage => :cloudinary, :cloudinary_resource_type => :image,  :path => "export_applications/:attachment/:id/:style/:filename",
                      styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :annual_financial_statement_importer_second_last, content_type: ['image/jpeg', 'image/png', 'image/gif', 'application/pdf']

    has_attached_file :annual_financial_statement_exporter, :storage => :cloudinary, :cloudinary_resource_type => :image, :path => "export_applications/:attachment/:id/:style/:filename",
                      styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :annual_financial_statement_exporter, content_type: ['image/jpeg', 'image/png', 'image/gif', 'application/pdf']

    has_attached_file :annual_financial_statement_exporter_second_last, :storage => :cloudinary, :cloudinary_resource_type => :image, :path => "export_applications/:attachment/:id/:style/:filename",
                      styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :annual_financial_statement_exporter_second_last, content_type: ['image/jpeg', 'image/png', 'image/gif', 'application/pdf']

    has_attached_file :export_contract_or_bills, :storage => :cloudinary,  :cloudinary_resource_type => :image, :path => "export_applications/:attachment/:id/:style/:filename",
                      styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :export_contract_or_bills, content_type: ['image/jpeg', 'image/png', 'image/gif', 'application/pdf']
    
    has_attached_file :credit_bureaus_importer, :storage => :cloudinary, :cloudinary_resource_type => :image,  :path => "export_applications/:attachment/:id/:style/:filename",
                      styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :credit_bureaus_importer, content_type: ['image/jpeg', 'image/png', 'image/gif', 'application/pdf']

    has_attached_file :self_declaration, :storage => :cloudinary, :cloudinary_resource_type => :image,  :path => "export_applications/:attachment/:id/:style/:filename",
                      styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :self_declaration, content_type: ['image/jpeg', 'image/png', 'image/gif', 'application/pdf']

    has_attached_file :project_memorandum_exporter_business, :storage => :cloudinary, :cloudinary_resource_type => :image,  :path => "export_applications/:attachment/:id/:style/:filename",
                      styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :project_memorandum_exporter_business, content_type: ['image/jpeg', 'image/png', 'image/gif', 'application/pdf']

    has_attached_file :environment_social_audit, :storage => :cloudinary, :cloudinary_resource_type => :image,  :path => "export_applications/:attachment/:id/:style/:filename",
                      styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :environment_social_audit, content_type: ['image/jpeg', 'image/png', 'image/gif', 'application/pdf']
	
end