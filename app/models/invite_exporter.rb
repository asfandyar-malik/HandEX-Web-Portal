class InviteExporter < ApplicationRecord
    belongs_to :user

    validates :exporter_email,    uniqueness: true

end