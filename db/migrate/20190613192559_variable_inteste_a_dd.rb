class VariableIntesteADd < ActiveRecord::Migration[5.2]
  def change
    add_column :insurances, :variable_interest_rate, :string
    add_column :insurances, :degressive_interest_rate, :string
    add_column :insurances, :interest_calculation_description, :string

  end
end
