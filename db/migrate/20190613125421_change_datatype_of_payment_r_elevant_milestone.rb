class ChangeDatatypeOfPaymentRElevantMilestone < ActiveRecord::Migration[5.2]
  def change
    remove_column :multiple_deliveries, :payment_relevant_milestone
    add_column :multiple_deliveries, :payment_relevant_milestones, :string
  end
end
