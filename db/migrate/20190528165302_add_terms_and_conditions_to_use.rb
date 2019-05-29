class AddTermsAndConditionsToUse < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :has_accepted_terms_conditions, :boolean
  end
end
