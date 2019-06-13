class InsuranceAgreedPayment < ApplicationRecord
    belongs_to :insurance, optional: true
end