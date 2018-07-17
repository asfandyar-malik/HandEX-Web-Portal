class Buyer < ApplicationRecord
  belongs_to :tradeinfo

  validates :fullname, presence: true, length: {maximum: 50}

end
