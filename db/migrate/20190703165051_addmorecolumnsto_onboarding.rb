class AddmorecolumnstoOnboarding < ActiveRecord::Migration[5.2]
  def change
    add_column :onboardings, :legal_representative_pep_address_line_two, :string
  end
end
