class AddContractValueLoanDuration < ActiveRecord::Migration[5.2]
  def change
      add_column :insurances, :loan_duration, :string
      add_column :insurances, :contract_value, :string
  end
end
