class ExtraBilledItem < ApplicationRecord
    belongs_to :export_application, optional: true
end