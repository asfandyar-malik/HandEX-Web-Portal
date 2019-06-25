class AddApplicationTypeToInsuranceApplication < ActiveRecord::Migration[5.2]
  def change
    # Creating 'Zussamenfassung'
    add_column :insurances, :application_type, :string
  end
end
