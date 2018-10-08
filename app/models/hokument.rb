class Hokument < ApplicationRecord

  belongs_to :user

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :avatar, content_type: ['image/jpeg', 'image/png', 'image/gif', 'application/pdf']

  has_attached_file :invoice2, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :invoice2, content_type: ['image/jpeg', 'image/png', 'image/gif', 'application/pdf']

  has_attached_file :balancesheet, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :balancesheet, content_type: ['image/jpeg', 'image/png', 'image/gif', 'application/pdf']

  has_attached_file :otherdoc, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :otherdoc, content_type: ['image/jpeg', 'image/png', 'image/gif', 'application/pdf']

end