class Tradeinfo < ApplicationRecord
    belongs_to :user

    has_one :financial
    has_one :buyer
    has_one :insurance
    has_one :listing
    has_one :bankaccount
    has_one :officialdocument

    # validates :exportinformation, presence: true
    # validates :category, presence: true

end