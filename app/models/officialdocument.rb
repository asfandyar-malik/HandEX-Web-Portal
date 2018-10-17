class Officialdocument < ApplicationRecord
    belongs_to :tradeinfo

    has_attached_file :invoiceone, styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :invoiceone, content_type: ['image/jpeg', 'image/png', 'image/gif', 'application/pdf']

    has_attached_file :invoicetwo, styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :invoicetwo, content_type: ['image/jpeg', 'image/png', 'image/gif', 'application/pdf']

    has_attached_file :balancesheet, styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :balancesheet, content_type: ['image/jpeg', 'image/png', 'image/gif', 'application/pdf']

    has_attached_file :companyregistrationcertificate, styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :companyregistrationcertificate, content_type: ['image/jpeg', 'image/png', 'image/gif', 'application/pdf']

    has_attached_file :shareholdersagreement, styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :shareholdersagreement, content_type: ['image/jpeg', 'image/png', 'image/gif', 'application/pdf']

    has_attached_file :identificationdocumentshareholder, styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :identificationdocumentshareholder, content_type: ['image/jpeg', 'image/png', 'image/gif', 'application/pdf']

    has_attached_file :extradoc, styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :extradoc, content_type: ['image/jpeg', 'image/png', 'image/gif', 'application/pdf']

end
