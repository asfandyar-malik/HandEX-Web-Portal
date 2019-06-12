class CreateAgreedPayments < ActiveRecord::Migration[5.2]
    def change
        create_table :agreed_payments do |t|
            t.string :currency
            t.string :amount
            t.string :time
            t.string :some_output
            t.belongs_to :export_application, foreign_key: true
            t.timestamps
        end

        remove_column :export_applications, :agreed_payments_currency_payment_term_short
        remove_column :export_applications, :agreed_payments_amount_payment_term_short
        remove_column :export_applications, :agreed_payments_time_payment_term_short
        remove_column :export_applications, :agreed_payments_some_output_payment_term_short
        
        remove_column :export_applications, :agreed_payments_currency_payment_term_both
        remove_column :export_applications, :agreed_payments_amount_payment_term_both
        remove_column :export_applications, :agreed_payments_time_payment_term_both
        remove_column :export_applications, :agreed_payments_some_output_payment_term_both
        
        remove_column :export_applications, :agreed_payments_currency_payment_term_short_2
        remove_column :export_applications, :agreed_payments_amount_payment_term_short_2
        remove_column :export_applications, :agreed_payments_time_payment_term_short_2
        remove_column :export_applications, :agreed_payments_some_output_payment_term_short_2

        remove_column :export_applications, :agreed_payments_currency_payment_term_short_3
        remove_column :export_applications, :agreed_payments_amount_payment_term_short_3
        remove_column :export_applications, :agreed_payments_time_payment_term_short_3
        remove_column :export_applications, :agreed_payments_some_output_payment_term_short_3

        remove_column :export_applications, :agreed_payments_currency_payment_term_short_4
        remove_column :export_applications, :agreed_payments_amount_payment_term_short_4
        remove_column :export_applications, :agreed_payments_time_payment_term_short_4
        remove_column :export_applications, :agreed_payments_some_output_payment_term_short_4

        remove_column :export_applications, :agreed_payments_currency_payment_term_short_5
        remove_column :export_applications, :agreed_payments_amount_payment_term_short_5
        remove_column :export_applications, :agreed_payments_time_payment_term_short_5
        remove_column :export_applications, :agreed_payments_some_output_payment_term_short_5
    end
end
