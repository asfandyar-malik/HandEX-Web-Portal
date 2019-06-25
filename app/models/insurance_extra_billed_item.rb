class InsuranceExtraBilledItem < ApplicationRecord
    belongs_to :insurance, optional: true
end