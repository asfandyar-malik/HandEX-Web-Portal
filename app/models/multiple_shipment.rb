class MultipleShipment < ApplicationRecord
    belongs_to :export_application, optional: true
end