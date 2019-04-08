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
            :describe_export_business, :yes_investment_good, :no_investment_good, :explain_why_importer_buying_goods, :yes_exporter_offers_servicing_for_goods,
            :no_exporter_offers_servicing_for_goods, :exported_goods_type, :explain_good_industry_type, :yes_deliver_part_of_overall_project_other_companies,
            :no_deliver_part_of_overall_project_other_companies, :delivery_doesnt_affects_sensitive_areas, :delivery_affects_natural_reserves,
            :delivery_affects_indigenous_people, :delivery_affects_cultural_heritage, :delivery_affects_other, :explain_delivery_affects_other,
            :yes_export_requires_exportlicense, :no_export_requires_exportlicense, :which_regulations_arises_exportlicense_requirement, :exportlicense_status,
            :yes_deliver_secondhand_goods, :no_dont_deliver_secondhand_goods, :yes_contract_already_signed_all_parties, :no_contract_already_signed_all_parties,
            :trade_contract_signing_date, :exporter_internal_contract_id, :yes_special_contract_structure, :no_special_contract_structure, :contract_trade_currency,
            :contract_trade_amount, :total_delivery_value, :percentage_of_spareparts_in_whole_order, :more_components_open_to_exporter_currency,
            :more_components_open_to_exporter_amount, :more_components_open_to_exporter_explain, :yes_price_adjustment_clause_with_importer,
            :no_price_adjustment_clause_with_importer, :explain_accounting_methods, :yes_goods_sent_multiple_deliveries, :no_goods_sent_multiple_deliveries,
            :delivery_start, :delivery_end, :other_important_delivery_information, :other_important_delivery_milestones, :yes_sonstige_kurzfrist_certificate_of_origin,
            :no_sonstige_kurzfrist_certificate_of_origin, :part_of_goods__sonstige_kurzfrist_certificate_of_origin, :all_rawgoods_supplier_country, :all_rawgoods_supplier_currency,
            :all_rawgoods_supplier_text, :why_all_foreign_rawgoods_necessary, :partly_rawgoods_supplier_country, :partly_rawgoods_supplier_currency, :partly_rawgoods_supplier_text,
            :why_partly_foreign_rawgoods_necessary, :yes_security_businnes_provided, :no_security_businnes_provided, :security_type, :security_type_name,
            :proportion_contract_security_provided, :when_security_received,
           
            # Ihr Kunde ----------------------------------------
            :importer_company_name, :importer_address, :importer_plz, :importer_city, :importer_country, :exporting_to_private_sector, :yes_delivered_at_this_address,
            :no_delivered_at_this_address, :importer_delivery_address_company_name, :importer_delivery_address_country, :importer_delivery_address_street,
            :importer_delivery_address_plz, :importer_delivery_address_city, :yes_exporter_influence_on_importer_management, :no_exporter_influence_on_importer_management,
            :explain_exporter_influence_on_importer_management, :yes_previous_payment_experience_with_importer, :no_previous_payment_experience_with_importer,
            :explain_previous_payment_experience_with_importer,
            
            # Ihre Finanzierung --------------------------------
            :yes_residualriskapetite_minimum_five, :no_residualriskapetite_minimum_five, :yes_payment_term_already_agreed, :no_payment_term_already_agreed,
            :payment_term_shortterm, :payment_term_middleterm, :payment_term_both, :yes_charge_interest_to_importer, :no_charge_interest_to_importer, :contract_value,
            
            # Notwendiges zum Schluss --------------------------
            :yes_previously_hermes_insurance_used, :no_previously_hermes_insurance_used, :trading_since_when_without_hermes_insurance, :experience_with_export_country,
            :adequate_claims_management, :exporter_company_name, :exporter_company_dnnr, :exporter_telephone, :exporter_company_street, :exporter_company_plz,
            :exporter_company_country, :employees_count, :revenue_last_year, :exporter_company_representative_firstname, :exporter_company_representative_lastname,
            :exporter_company_representative_email, :exporter_company_representative_function, :exporter_company_representative_department,
            :corruption_declaration_applies, :no_corruption_declaration_applies, :explain_corruption_declaration_applies, :give_consortiums_companies,
            :information_inputted_best_of_knowledge, :accept_terms_conditions, :read_privacy_policy, :read_all_instructions,
            
            # Documents ----------------------------------------
            :self_disclosure, :annual_financial_statement_importer, :credit_bureaus_importer, :environment_social_audit, :project_memorandum_exporter_business,
            :additional_document,

            # Orphan ----------------------------------------
            :agreed_payments_output, :agreed_payments_time, :agreed_payments_some_output, :payment_vehichle, :receive_deposit_time, :repayment_profile_structure,
            :loan_term_start, :loan_term_other_description, :number_of_installments, :sonstige_kurzfrist_advance_payment_currency, :sonstige_kurzfrist_advance_payment_amount,
            :sonstige_kurzfrist_advance_payment_explain, :sonstige_kurzfrist_deposit_received, :sonstige_kurzfrist_repayment_structure, :sonstige_kurzfrist_credit_start,
            :sonstige_kurzfrist_credit_start_sonstige_explain, :sonstige_kurzfrist_number_of_installments, :sonstige_kurzfrist_payment_vehichle_explain,
            :agreed_payments_currency, :agreed_payments_amount, :source_of_fund_amount, :goods_overhauled_location, :explain_special_contract_structure,
            :graphic_representation_project_participants, :contract_currency, :downpayment_delivery_currency,
            :downpayment_delivery_amount, :downpayment_delivery_description, :risk_shipment_risk_cover, :risk_supplier_credit_cover, :exporter_company_city,
            :further_lower_economic_risk, :yes_jointventure_with_consortiums, :no_jointventure_with_consortiums,  :loan_term
            
        )
    end
end
