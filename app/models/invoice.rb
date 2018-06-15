class Invoice < ApplicationRecord
    belongs_to :user

    # validates :belong_me, presence: true
    # validates :defect_free, presence: true
    # validates :delivered_specific_date, presence: true
    # validates :currency, presence: true
    # validates :grand_total_invoice_value, presence: true

    def cover_photo(size)
        "default.jpg"
    end
end
