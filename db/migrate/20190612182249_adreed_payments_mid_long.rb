class AdreedPaymentsMidLong < ActiveRecord::Migration[5.2]
    def change
        create_table :agreed_payment_mid_longs do |t|
            t.string :currency
            t.string :output
            t.string :amount
            t.belongs_to :export_application, foreign_key: true
            t.timestamps
        end

        remove_column :export_applications, :agreed_payments_currency_payment_term_mid
        remove_column :export_applications, :agreed_payments_output_payment_term_mid
        remove_column :export_applications, :agreed_payments_amount_payment_term_mid

    end
end