class InsuranceSpecialRepaymentProfile < ApplicationRecord
	belongs_to :insurance, optional: true
end