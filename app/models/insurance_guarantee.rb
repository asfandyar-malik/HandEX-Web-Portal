class InsuranceGuarantee < ApplicationRecord
    belongs_to :insurance, optional: true
end