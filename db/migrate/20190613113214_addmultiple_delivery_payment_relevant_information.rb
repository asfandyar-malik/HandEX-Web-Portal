class AddmultipleDeliveryPaymentRelevantInformation < ActiveRecord::Migration[5.2]
  def change
    create_table :multiple_deliveries do |t|
      t.string :payment_relevant_information
      t.datetime :payment_relevant_milestone
      t.belongs_to :export_application, foreign_key: true
      t.timestamps
    end
    
    remove_column :export_applications, :other_important_delivery_information
    remove_column :export_applications, :other_important_delivery_milestones
  end
end




