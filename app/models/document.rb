class Document < ApplicationRecord
    
    has_attached_file :invoice, styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :invoice, content_type: ['image/jpeg', 'image/png', 'image/gif', 'application/pdf']
end