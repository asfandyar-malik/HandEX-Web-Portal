class RenameColumnWronglyNameChangedInsurances < ActiveRecord::Migration[5.2]
  def change
    rename_column :insurances, :agreed_prepayment_payment_term_mid, :agreed_payments_currency_payment_term_mid
  end
end
