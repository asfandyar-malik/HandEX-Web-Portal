class AddTransactgionCompletedTablesIntoInsurances < ActiveRecord::Migration[5.2]
  def change
    add_column :insurances, :yes_already_completed_transaction, :string
    add_column :insurances, :no_already_completed_transaction, :string
  end
end
