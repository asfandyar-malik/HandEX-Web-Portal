class Tradeinfo < ApplicationRecord
    belongs_to :user

    has_one :financial
    has_one :buyer
    has_one :insurance
    has_one :bankaccount

    # validates :exportinformation, presence: true
    # validates :category, presence: true

end
