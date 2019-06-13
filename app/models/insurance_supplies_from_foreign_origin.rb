class InsuranceSuppliesFromForeignOrigin < ApplicationRecord
    belongs_to :insurance, optional: true
end