class AddResidualRiskInformationToInsurance < ActiveRecord::Migration[5.2]
  def change
    add_column :insurances, :yes_residualriskapetite_minimum_five, :boolean
    add_column :insurances, :no_residualriskapetite_minimum_five, :boolean
    add_column :insurances, :yes_residualriskapetite_five, :boolean
    add_column :insurances, :no_residualriskapetite_five, :boolean

  end
end
