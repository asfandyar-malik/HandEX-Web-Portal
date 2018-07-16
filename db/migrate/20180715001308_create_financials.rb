class CreateFinancials < ActiveRecord::Migration[5.2]
  def change
    create_table :financials do |t|
      t.references :user, foreign_key: true
      t.string :total_financing_required
      t.string :time_duration
      t.integer :projected_sales_18_19
      t.integer :projected_sales_20_21
      t.string :net_profitability
      t.integer :net_worth
      t.string :ifsc
      t.boolean :outstanding_bank_nbfc_facility
      t.string :name_of_institution
      t.string :type_of_loan
      t.integer :size_of_loan
      t.string :defaulted_or_overdue
      t.string :explain_defaulted_or_overdue
      t.string :receivables_factored
      t.string :explain_receivables_factored

      t.timestamps
    end
  end
end
