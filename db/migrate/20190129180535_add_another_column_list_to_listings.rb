class AddAnotherColumnListToListings < ActiveRecord::Migration[5.2]
    def change
        add_column :insurances, :yes_jointventure_with_consortiums, :string
        add_column :insurances, :no_jointventure_with_consortiums, :string
        add_column :insurances, :give_consortiums_companies, :string
        add_column :insurances, :information_inputted_best_of_knowledge, :string
        add_column :insurances, :accept_terms_conditions, :string
        add_column :insurances, :read_privacy_policy, :string
        add_column :insurances, :read_all_instructions, :string
    end
end
