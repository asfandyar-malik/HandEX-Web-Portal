class AddServiceRelatedPaymentRelevantDatesToInsurance < ActiveRecord::Migration[5.2]
  def change
    add_column :insurances, :service_start, :date
    add_column :insurances, :service_end, :date
    add_column :insurances, :availability, :date
  end
end
