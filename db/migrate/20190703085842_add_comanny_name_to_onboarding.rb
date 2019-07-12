class AddComannyNameToOnboarding < ActiveRecord::Migration[5.2]
    def change
        add_column :onboardings, :company_name, :string


    end
end
