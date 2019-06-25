class InsuranceSourceOfFund < ApplicationRecord
    belongs_to :insurance, optional: true
end