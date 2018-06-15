class Document < ApplicationRecord
    belongs_to :user
    has_many :photos

    validates :document_type, presence: true
    validates :year, presence: true

    def cover_photo(size)
        "default.jpg"
    end

end
