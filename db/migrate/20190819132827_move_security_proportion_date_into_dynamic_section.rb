class MoveSecurityProportionDateIntoDynamicSection < ActiveRecord::Migration[5.2]
  def change
    remove_column :export_applications, :proportion_of_good_covered_by_security
    remove_column :export_applications, :when_security_received
    remove_column :insurances, :proportion_of_good_covered_by_security
    remove_column :insurances, :when_security_received
    add_column :guarantees, :proportion_of_good_covered_by_security, :string
    add_column :guarantees, :when_security_received, :string
    add_column :insurance_guarantees, :proportion_of_good_covered_by_security, :string
    add_column :insurance_guarantees, :when_security_received, :string
  end
end