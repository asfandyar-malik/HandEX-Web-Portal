class AddSourceColumnslumnsToInsuranceOtherX < ActiveRecord::Migration[5.2]
    def change
        add_column :insurances, :agreed_payments_output, :string
        add_column :insurances, :agreed_payments_time, :string
        add_column :insurances, :agreed_payments_some_output, :string
        add_column :insurances, :payment_vehichle, :string
        add_column :insurances, :receive_deposit_time, :string
        add_column :insurances, :repayment_profile_structure, :string
        add_column :insurances, :loan_term_start, :string
        add_column :insurances, :loan_term_other_description, :string

        add_column :insurances, :number_of_installments, :string
        add_column :insurances, :down_payment_before_delivery_currency, :string
        add_column :insurances, :down_payment_before_delivery_amount, :string
        add_column :insurances, :down_payment_before_delivery_explain, :string
        
        add_column :insurances, :sonstige_kurzfrist_agreed_payment_currency, :string
        add_column :insurances, :sonstige_kurzfrist_agreed_payment_amount, :string
        add_column :insurances, :sonstige_kurzfrist_agreed_payment_percent, :string
        add_column :insurances, :sonstige_kurzfrist_agreed_payment_date, :string
        add_column :insurances, :sonstige_kurzfrist_agreed_payment_output, :string

        add_column :insurances, :sonstige_kurzfrist_advance_payment_currency, :string
        add_column :insurances, :sonstige_kurzfrist_advance_payment_amount, :string
        add_column :insurances, :sonstige_kurzfrist_advance_payment_explain, :string
        add_column :insurances, :sonstige_kurzfrist_deposit_received, :string
        add_column :insurances, :sonstige_kurzfrist_repayment_structure, :string

        add_column :insurances, :sonstige_kurzfrist_credit_start, :string
        add_column :insurances, :sonstige_kurzfrist_credit_start_sonstige_explain, :string
        add_column :insurances, :sonstige_kurzfrist_number_of_installments, :string
        add_column :insurances, :sonstige_kurzfrist_payment_vehichle_explain, :string
        add_column :insurances, :yes_sonstige_kurzfrist_certificate_of_origin, :string
        add_column :insurances, :no_sonstige_kurzfrist_certificate_of_origin, :string
        add_column :insurances, :part_of_goods__sonstige_kurzfrist_certificate_of_origin, :string
    end
end
