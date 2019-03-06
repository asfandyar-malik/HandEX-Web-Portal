class InsurancesController < ApplicationController
    layout "insurance", only: [:new, :edit]
    
    before_action :set_insurance, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!
    before_action :is_authorised, only: [:update]
    
    def index
        @new_applications = filer_application_by_status "new"
    end
    
    def show
    end
    
    def new
        @insurance = current_user.insurances.build
    end
    
    def edit
    end
    
    def create
        @insurance                    = current_user.insurances.build(insurance_params)
        @insurance.application_status = "submitted"
        if @insurance.save
            # UserMailer.with(user: current_user, insurance: @insurance).application_submit_email.deliver_now
            redirect_to pages_applicationProcessing_path(@insurance), notice: 'Antrag wurde erfolgreich erstellt.'
        else
            flash[:notice] = "Beim Erstellen von Antrag ist ein Fehler aufgetreten...."
            render :new
        end
    end
    
    def update
        if @insurance.update(insurance_params)
            redirect_to pages_applicationProcessing_path(@insurance), notice: 'Antrag wurde erfolgreich aktualisiert.'
        else
            flash[:notice] = "Beim Erstellen von Antrag ist ein Fehler aufgetreten...."
        end
    end
    
    def destroy
        @insurance.destroy
        respond_to do |format|
            format.html {redirect_to insurances_url, notice: 'Antrag wurde erfolgreich zerstört'}
            format.json {head :no_content}
        end
    end
    
    def submitted_applications
        @submitted_applications = filer_application_by_status "submitted"
    end
    
    def approved_applications
        @approved_applications = filer_application_by_status "approved"
    end
    
    private
    
    def filer_application_by_status status
        current_user.insurances.where("application_status = ?", status)
    end
    
    # Use callbacks to share common setup or constraints between actions.
    def set_insurance
        @insurance = Insurance.find(params[:id])
    end
    
    def is_authorised
        redirect_to root_path, alert: "You don't have permission" unless current_user.id = @insurance.user_id
    end
    
    def insurance_params
        params.require(:insurance).permit(
            #important_first
            :importer_country, :is_investment_good, :contract_value, :loan_duration, :exporting_to_private_sector, :exporting_to_public_sector,
            #financing
            :exporter_company_name, :exporter_email, :exporter_telephone, :city, :country, :description,
            :insurance_cover, :country_category, :buyer_category, :expected_date_product_received_importer, :date_contractsigned_with_importer,
            :payment_deadline, :private_sector, :public_sector,
            :risk_avaline_guarantee, :risk_contractual_warranty_coverage, :risk_shipment_risk_cover, :risk_supplier_credit_cover,
            :risk_further_coverage, :describe_export_business, :reason_for_buying_good, :also_provide_service_training, :product_branch,
            :explain_product_branch, :part_of_big_project_yes, :part_of_big_project_no, :explain_complete_project,
            :overall_responsibility_project_taken, :overall_project_volume_currency, :overall_project_volume, :use_of_fund,
            :use_of_fund_currency, :amount_of_fund, :delivery_doesnt_affects_sensitive_areas, :delivery_affects_natural_reserves, :delivery_affects_indigenous_people,
            #business_information
            :delivery_affects_cultural_heritage, :delivery_affects_other, :delivery_affects_other_explain, :yes_export_requires_exportlicense, :no_export_requires_exportlicense,
            :which_regulation_requires_exportlicense, :exportlicense_status, :yes_deliver_secondhand_goods, :no_dont_deliver_secondhand_goods, :product_original_date_of_manifacture,
            :product_remaining_life, :yes_good_overhauled_before_reselling, :no_good_arent_overhauled_before_reselling, :goods_overhauled_location,
            :yes_contract_already_signed_all_parties, :no_contract_already_signed_all_parties, :goods_completion_date, :companny_internal_id,
            :yes_special_contract_structure, :no_special_contract_structure, :explain_special_contract_structure, :graphic_representation_project_participants,
            :contract_currency, :order_value_export_business_currency, :order_value_export_business_currency_amount, :total_delivery_value,
            #importer_information
            :percentage_of_spare_parts_in_whole_order, :more_components_open_to_exporter_currency, :more_components_open_to_exporter_amount,
            :more_components_open_to_exporter_explain, :ja_customer_counts_interest, :no_customer_counts_interest, :interest_currency, :interest_amount,
            :yes_price_adjustment_clause, :no_price_adjustment_clause, :explain_billing_methods, :yes_multiple_deliveries, :no_multiple_deliveries,
            :delivery_start, :delivery_end, :other_important_delivery_information, :other_important_delivery_milestones, :payment_term_shortterm,
            :payment_term_middleterm, :payment_term_both, :downpayment_delivery_currency, :downpayment_delivery_amount, :downpayment_delivery_description,
            :source_of_fund, :source_of_fund_currency, :source_of_fund_amount, :agreed_payments_currency, :agreed_payments_amount,
            :agreed_payments_output, :agreed_payments_time, :agreed_payments_some_output, :payment_vehichle, :receive_deposit_time, :repayment_profile_structure,
            #necessary_at_end
            :loan_term_start, :loan_term_other_description, :number_of_installments, :down_payment_before_delivery_currency, :down_payment_before_delivery_amount,
            :down_payment_before_delivery_explain, :sonstige_kurzfrist_agreed_payment_currency, :sonstige_kurzfrist_agreed_payment_amount,
            :sonstige_kurzfrist_agreed_payment_percent, :sonstige_kurzfrist_agreed_payment_date, :sonstige_kurzfrist_agreed_payment_outpout,
            :sonstige_kurzfrist_advance_payment_currency, :sonstige_kurzfrist_advance_payment_amount, :sonstige_kurzfrist_advance_payment_explain,
            :sonstige_kurzfrist_deposit_received, :sonstige_kurzfrist_repayment_structure, :sonstige_kurzfrist_credit_start,
            :sonstige_kurzfrist_credit_start_sonstige_explain, :sonstige_kurzfrist_number_of_installments, :sonstige_kurzfrist_payment_vehichle_explain,
            :yes_sonstige_kurzfrist_certificate_of_origin, :no_sonstige_kurzfrist_certificate_of_origin, :part_of_goods__sonstige_kurzfrist_certificate_of_origin,
            :ak_number, :company_name, :tax_number, :years_trading_without_hermes_cover, :experience_with_export_country, :adequate_claims_management,
            :employees_count, :revenue_last_year, :sonstige_kurzfrist_agreed_payment_output, :application_status)
    end
end