class RemoveSonstigeColumnFromInsurances < ActiveRecord::Migration[5.2]
  def change
    remove_column :insurances, :no_sonstige_kurzfrist_certificate_of_origin
  end
end
