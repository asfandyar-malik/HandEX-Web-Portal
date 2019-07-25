class InviteImporter < ApplicationRecord
	belongs_to :export_applications, optional: true
end