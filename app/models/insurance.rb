class Insurance < ApplicationRecord
    belongs_to :user

    validates :read_all_instructions, :acceptance => true
    validates :read_privacy_policy, :acceptance => true
    validates :accept_terms_conditions, :acceptance => true
    
end