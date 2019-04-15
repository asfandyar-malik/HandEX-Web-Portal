class InsurancesController < ApplicationController
    include Html2pdfconverter
    
    layout "insurance", only: [:new, :edit, :index]
    
    before_action :set_insurance, only: [:show, :edit, :update, :destroy, :user_summary, :user_summary_pdf, :pdf_user_summary]
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
    
    def user_summary
        render "insurances/summary/user_summary"
    end
    
    def pdf_user_summary
        configure_html_to_pdf output_file_name: 'insurances/summary/pdf_generated_user_summary.html.erb',
                              layout:           'application_pdf.html.erb',
                              view:             'insurances/summary/pdf_user_summary.html.erb'
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
            # Ihr Geschaft -------------------------------------
            :describe_export_business, :is_investment_good, :no_investment_good, :explain_why_importer_buying_good, :is_servicing_for_goods_offered,
            :no_exporter_offers_servicing_for_goods, :exported_goods_type, :explain_good_industry_type, :is_delivered_part_of_consortium_with_other_companies,
            :no_deliver_part_of_overall_project_other_companies, :delivery_doesnt_affects_sensitive_areas, :delivery_affects_natural_reserves,
            :delivery_affects_indigenous_people, :delivery_affects_cultural_heritage, :delivery_affects_other, :explain_delivery_affects_other,
            :is_export_licence_needed, :no_export_requires_exportlicense, :which_regulations_enforcing_exportlicense_requirement, :export_license_status,
            :does_deliver_secondhand_goods, :no_dont_deliver_secondhand_goods, :yes_contract_already_signed_all_parties, :no_contract_already_signed_all_parties,
            :contract_signing_date, :exporter_internal_contract_id, :has_special_contract_structure, :no_special_contract_structure, :contract_trade_currency,
            :contract_trade_amount, :total_delivery_value, :percentage_of_spareparts_in_whole_order, :other_billed_items_in_contract_currency,
            :other_billed_items_in_contract_amount, :describe_other_billed_items_in_contract, :yes_price_adjustment_clause_with_importer,
            :no_price_adjustment_clause_with_importer, :explain_accounting_methods, :is_good_sent_in_multiple_deliveries, :no_goods_sent_multiple_deliveries,
            :delivery_start, :delivery_end, :other_important_delivery_information, :other_important_delivery_milestones, :has_german_certificate_of_origin,
            :no_sonstige_kurzfrist_certificate_of_origin, :has_german_certificate_of_origin_for_only_parts_of_good, :all_rawgoods_supplier_country, :all_rawgoods_supplier_currency,
            :all_rawgoods_supplier_text, :why_all_foreign_rawgoods_necessary, :partly_rawgoods_supplier_country, :partly_rawgoods_supplier_currency, :partly_rawgoods_supplier_text,
            :why_partly_foreign_rawgoods_necessary, :is_security_present_for_transaction, :no_security_businnes_provided, :security_type, :security_type_name,
            :proportion_of_good_covered_by_security, :when_security_received,
           
            # Ihr Kunde ----------------------------------------
            :importer_company_name, :importer_address, :importer_plz, :importer_city, :importer_country, :exporting_to_private_sector, :is_shipment_address,
            :no_delivered_at_this_address, :importer_shipment_company_name, :importer_shipment_country, :importer_shipment_street,
            :importer_shipment_plz, :importer_shipment_city, :has_significant_influence_on_importer_management, :no_exporter_influence_on_importer_management,
            :explain_exporter_influence_on_importer_management, :has_payment_experience_with_importer, :no_previous_payment_experience_with_importer,
            :explain_previous_payment_experience_with_importer,
            
            # Ihre Finanzierung --------------------------------
            :accept_partial_refinancing, :no_residualriskapetite_minimum_five, :has_agreed_payment_term_already, :no_payment_term_already_agreed,
            :payment_term_short, :payment_term_mid, :payment_term_both, :yes_charge_interest_to_importer, :no_charge_interest_to_importer, :contract_value,
            
            # Notwendiges zum Schluss --------------------------
            :has_previously_used_hermes_cover, :no_previously_hermes_insurance_used, :years_trading_without_hermes_insurance, :experience_with_importer_country,
            :adequate_claims_management, :exporter_name, :exporter_dn_no, :exporter_telephone, :exporter_street, :exporter_plz,
            :exporter_country, :employees_count, :revenue_last_year, :exporter_representative_firstname, :exporter_representative_lastname,
            :exporter_representative_email, :exporter_representative_function, :exporter_representative_department,
            :does_corruption_declaration_apply, :no_corruption_declaration_applies, :explain_corruption_sanctions, :give_consortiums_companies,
            :is_all_information_provided_with_best_of_knowledge, :has_accepted_terms_conditions, :has_read_privacy_policy, :has_read_all_instructions,
            
            # Documents ----------------------------------------
            :self_disclosure, :annual_financial_statement_importer, :credit_bureaus_importer, :environment_social_audit, :project_memorandum_exporter_business,
            :additional_document,

            # Orphan ----------------------------------------
            :agreed_payments_output_payment_term_short, :agreed_payments_time_payment_term_short, :agreed_payments_some_output_payment_term_short, :payment_vehichle_payment_term_short, :receive_deposit_time_payment_term_mid, :repayment_profile_structure_payment_term_mid,
            :loan_term_start_payment_term_mid, :loan_term_other_description_payment_term_mid, :number_of_installments_payment_term_short, :advance_payment_currency_payment_term_both, :advance_payment_amount_payment_term_both,
            :advance_payment_description_payment_term_both, :deposit_received_payment_term_both, :repayment_structure_payment_term_both, :credit_start_date_payment_term_both,
            :credit_start_special_description_payment_term_both, :number_of_installments_payment_term_both, :payment_vehichle_explain_payment_term_both,
            :agreed_payments_currency_payment_term_short, :agreed_payments_amount_payment_term_short, :source_of_fund_amount, :goods_overhauled_location, :explain_special_contract_structure,
            :graphic_representation_project_participants, :contract_currency, :downpayment_delivery_currency_payment_term_short,
            :downpayment_delivery_amount_payment_term_short, :downpayment_delivery_description_payment_term_short, :risk_shipment_risk_cover, :risk_supplier_credit_cover, :exporter_city,
            :further_lower_economic_risk, :yes_jointventure_with_consortiums, :no_jointventure_with_consortiums,  :loan_term
            
        )
    end
end
