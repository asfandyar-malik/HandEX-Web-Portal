class AddSecurityOtherValueInInsurances < ActiveRecord::Migration[5.2]
  def change
    add_column :insurances, :when_security_received_later_exact_date, :datetime
  end
end
