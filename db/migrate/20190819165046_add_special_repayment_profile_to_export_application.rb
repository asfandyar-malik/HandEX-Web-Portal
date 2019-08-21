class AddSpecialRepaymentProfileToExportApplication < ActiveRecord::Migration[5.2]
  create_table :special_repayment_profiles do |t|
    t.string :currency
    t.string :amount_receivable
    t.string :due_date
    t.belongs_to :export_application, foreign_key: true
    t.timestamps
  end
end