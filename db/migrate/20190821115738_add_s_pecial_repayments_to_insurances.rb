class AddSPecialRepaymentsToInsurances < ActiveRecord::Migration[5.2]
  def change
    create_table :insurance_special_repayment_profiles do |t|
      t.string :currency
      t.string :amount_receivable
      t.string :due_date
      t.belongs_to :insurance, foreign_key: true
      t.timestamps
    end
  end
end
