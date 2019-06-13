class FixingColumnNames < ActiveRecord::Migration[5.2]
  def change
    remove_column :multiple_deliveries, :payment_relevant_milestones
    add_column :multiple_deliveries, :payment_relevant_milestone
  end
end
