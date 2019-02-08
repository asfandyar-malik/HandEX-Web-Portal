class AddLoanTermToInsurance < ActiveRecord::Migration[5.2]
  def change
    add_column :insurances, :loan_term, :string
  end
end