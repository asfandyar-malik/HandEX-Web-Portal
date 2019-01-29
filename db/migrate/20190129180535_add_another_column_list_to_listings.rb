class AddAnotherColumnListToListings < ActiveRecord::Migration[5.2]
    def change
        add_column :listings, :yes_jointventure_with_consortiums, :string
        add_column :listings, :no_jointventure_with_consortiums, :string
        add_column :listings, :give_consortiums_companies, :string
        add_column :listings, :information_inputted_best_of_knowledge, :string
        add_column :listings, :accept_terms_conditions, :string
        add_column :listings, :read_privacy_policy, :string
        add_column :listings, :read_all_instructions, :string
    end
end
