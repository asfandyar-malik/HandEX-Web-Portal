class CreateBankaccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :bankaccounts do |t|
      t.references :tradeinfo, foreign_key: true
      t.string :name_account_holder
      t.string :iban
      t.string :bic

      t.timestamps
    end
  end
end
