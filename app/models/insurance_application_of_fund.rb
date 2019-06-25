class InsuranceApplicationOfFund < ApplicationRecord
    belongs_to :insurance, optional: true
end