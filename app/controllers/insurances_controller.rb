class InsurancesController < ApplicationController
	
	layout "insurance", only: [:new, :edit, :index]
	
	before_action :set_insurance, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!
	before_action :is_authorised, only: [:update]
	
	def index
		@new_applications = filer_application_by_status "NEW"
	end
	
	def show
		@insurance_company_attr_list             = %w(exporter_address_line1 exporter_address_line2 exporter_last_fiscal_year exporter_rating exporter_revenue exporter_tax_id)
		@insurance_your_importer_attr_list       = %w(importer_company_name importer_street_hno importer_plz importer_city importer_country is_delivered_at_this_address importer_shipment_company_name importer_shipment_country importer_shipment_address_line2 importer_shipment_street_hno importer_shipment_plz importer_shipment_city has_significant_influence_on_importer_management explain_exporter_influence_on_importer_management has_payment_experience_with_importer explain_previous_payment_experience_with_importer exporter_offers_servicing_for_goods)
		@insurance_business_attr_list            = %w(describe_export_business is_investment_good explain_why_importer_buying_good is_servicing_for_goods_offered exported_goods_type exported_goods_type_two exported_goods_type_three exported_goods_type_four explain_good_industry_type is_delivered_part_of_consortium_with_other_companies delivery_doesnt_affects_sensitive_areas delivery_affects_natural_reserves delivery_affects_indigenous_people delivery_affects_cultural_heritage delivery_affects_other explain_delivery_affects_other is_export_licence_needed which_regulations_enforcing_exportlicense_requirement export_license_status does_deliver_secondhand_goods is_contract_already_signed_between_parties contract_signing_date exporter_internal_contract_id has_special_contract_structure total_delivery_value_excluding_servicing percentage_of_spareparts_in_whole_order other_billed_items_in_contract_currency other_billed_items_in_contract_amount describe_other_billed_items_in_contract is_price_adjustment_clause_with_importer explain_accounting_methods is_good_sent_in_multiple_deliveries delivery_start delivery_end other_important_delivery_information other_important_delivery_milestones german_certificate_of_origin_status all_rawgoods_supplier_country all_rawgoods_supplier_currency all_rawgoods_supplier_text why_all_foreign_rawgoods_necessary partly_rawgoods_supplier_country partly_rawgoods_supplier_currency partly_rawgoods_supplier_text why_partly_foreign_rawgoods_necessary is_security_present_for_transaction security_type security_type_name proportion_of_good_covered_by_security when_security_received project_detailed_description is_fully_responsible_for_project entire_project_currency entire_project_amount percentage_of_service_in_whole_order contract_value does_delivery_affect_sensitive_areas explain_sensitive_area_type are_secondhand_goods_delivered explain_special_structure degressive_interest_rate, service_start, service_end, availability, services_not_visible_to_customer)
		@insurance_finance_and_payment_attr_list = %w(loan_duration accept_partial_refinancing has_agreed_payment_term_already payment_term is_interest_charged_to_importer downpayment_delivery_currency_payment_term_short downpayment_delivery_amount_payment_term_short downpayment_delivery_currency_payment_term_mid downpayment_delivery_amount_payment_term_mid downpayment_delivery_description_payment_term_mid repayment_structure_payment_term_mid agreed_prepayment_payment_term_mid agreed_payments_output_payment_term_mid agreed_payments_amount_payment_term_mid downpayment_delivery_currency_payment_term_both downpayment_delivery_amount_payment_term_both downpayment_delivery_description_payemnt_term_both agreed_payments_currency_payment_term_both agreed_payments_amount_payment_term_both agreed_payments_output_payment_term_both agreed_payments_time_payment_term_both agreed_payments_some_output_payment_term_both number_of_installments_payment_term_mid,:interest_currency interest_value fixed_interest_rate fixed_interest_rate_value variable_interest_rate interest_calculation_description, loan_term_start_description_payment_term_both, payment_vehichle_payment_term_both )
	end
	
	def new
		@insurance = current_user.insurances.build
	end
	
	def edit
	end
	
	
	def create
		@insurance                  = current_user.insurances.build(insurance_params)
		@insurance.application_type = 'insurance'
		if params[:draft] == 'Entwurf speichern'
			@insurance.application_status = 'DRAFT'
			if @insurance.save
				redirect_to "/insurances/" + @insurance.id.to_s + "/edit", notice: 'Antrag wurde erfolgreich aktualisiert.'
			else flash[:notice] = "Beim Erstellen von Antrag ist ein Fehler aufgetreten...."
			render :new
			end
		elsif params[:draft] == t("invite_importer_button")
			@insurance.application_status   = 'DRAFT'
			@insurance.has_invited_importer = true
			if @insurance.update(insurance_params)
				send_importer_invitation
				redirect_to "/insurances/" + @insurance.id.to_s + "/edit", notice: 'Einladung zum Kunden erfolgreich abgeschickt...'
			else flash[:notice] = "Beim Einladen des Kunden ist ein Problem aufgetreten...."
			show
			end
		else @insurance.application_status = 'SUBMITTED'
		if @insurance.save
			send_importer_invitation
			redirect_to pages_application_submitted_path, notice: 'Antrag wurde erfolgreich erstellt.'
		else flash[:notice] = "Beim Erstellen von Antrag ist ein Fehler aufgetreten...."
		render :new
		end
		end
	end
	
	def update
		@insurance.application_type = 'insurance'
		if params[:draft] == 'Entwurf speichern'
			@insurance.application_status = 'DRAFT'
			if @insurance.update(insurance_params)
				redirect_to "/insurances/" + @insurance.id.to_s + "/edit", notice: 'Antrag wurde erfolgreich aktualisiert.'
			else flash[:notice] = "Beim Erstellen von Antrag ist ein Fehler aufgetreten...."
			render :update
			end
		elsif params[:draft] == t("invite_importer_button")
			@insurance.application_status   = 'DRAFT'
			@insurance.has_invited_importer = true
			if @insurance.update(insurance_params)
				send_importer_invitation
				redirect_to "/insurances/" + @insurance.id.to_s + "/edit", notice: 'Einladung zum Kunden erfolgreich abgeschickt...'
			else flash[:notice] = "Beim Einladen des Kunden ist ein Problem aufgetreten...."
			show
			end
		else @insurance.application_status = 'SUBMITTED'
		if @insurance.update(insurance_params)
			send_importer_invitation
			redirect_to pages_application_submitted_path, notice: 'Antrag wurde erfolgreich gespeichert.'
		else flash[:notice] = "Beim Erstellen von Antrag ist ein Fehler aufgetreten...."
		render :update
		end
		end
	end
	
	def destroy
		@insurance.destroy
		redirect_to insurances_url, notice: 'Antrag wurde erfolgreich zerstört'
		head :no_content
	end
	
	# def submitted_applications
	# 	@submitted_applications = filer_application_by_status "SUBMITTED"
	# end
	#
	# def draft_applications
	# 	@draft_applications = filer_application_by_status "DRAFT"
	# end
	#
	# def approved_applications
	# 	@approved_applications = filer_application_by_status "APPROVED"
	# end
	#
	# def all_applications
	# 	@all_applications = current_user.insurances
	# end
	
	def send_importer_invitation
		if @insurance.invitation_importer_email.present? && @insurance.invitation_importer_company_name.present?
			UserMailer.with(user: current_user, insurance: @insurance).invite_importer_email_insurance.deliver_now
			flash[:notice] = "Einladung zum Kunden erfolgreich abgeschickt...."
		end
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
		params.require(:insurance).permit(# Ihr Geschaft -------------------------------------
			:application_type, :application_status, :describe_export_business, :is_investment_good, :explain_why_importer_buying_good, :is_servicing_for_goods_offered, :exported_goods_type, :exported_goods_type_two, :exported_goods_type_three, :exported_goods_type_four, :explain_good_industry_type, :is_delivered_part_of_consortium_with_other_companies, :delivery_doesnt_affects_sensitive_areas, :delivery_affects_natural_reserves, :delivery_affects_indigenous_people, :delivery_affects_cultural_heritage, :delivery_affects_other, :explain_delivery_affects_other, :is_export_licence_needed, :which_regulations_enforcing_exportlicense_requirement, :export_license_status, :does_deliver_secondhand_goods, :is_contract_already_signed_between_parties, :contract_signing_date, :exporter_internal_contract_id, :has_special_contract_structure, :total_delivery_value_excluding_servicing, :percentage_of_spareparts_in_whole_order, :other_billed_items_in_contract_currency, :other_billed_items_in_contract_amount, :describe_other_billed_items_in_contract, :is_price_adjustment_clause_with_importer, :explain_accounting_methods, :is_good_sent_in_multiple_deliveries, :delivery_start, :delivery_end, :other_important_delivery_information, :other_important_delivery_milestones, :german_certificate_of_origin_status, :all_rawgoods_supplier_country, :all_rawgoods_supplier_currency, :all_rawgoods_supplier_text, :why_all_foreign_rawgoods_necessary, :partly_rawgoods_supplier_country, :partly_rawgoods_supplier_currency, :partly_rawgoods_supplier_text, :why_partly_foreign_rawgoods_necessary, :is_security_present_for_transaction, :security_type, :security_type_name, :proportion_of_good_covered_by_security, :when_security_received, :project_detailed_description, :is_fully_responsible_for_project, :entire_project_currency, :entire_project_amount, :percentage_of_service_in_whole_order, :contract_value, :does_delivery_affect_sensitive_areas, :explain_sensitive_area_type, :are_secondhand_goods_delivered, :explain_special_structure, :degressive_interest_rate, :service_start, :service_end, :availability, :services_not_visible_to_customer,
			
			:overall_project_financing_details_subject_1, :overall_project_financing_details_currency_1, :overall_project_financing_details_amount_1, :overall_project_financing_details_subject_2, :overall_project_financing_details_currency_2, :overall_project_financing_details_amount_2, :overall_project_financing_details_subject_3, :overall_project_financing_details_currency_3, :overall_project_financing_details_amount_3,
			
			:subject_origin_overall_project_financing_details_subject_1, :subject_origin_overall_project_financing_details_currency_1, :subject_origin_overall_project_financing_details_amount_1, :subject_origin_overall_project_financing_details_subject_2, :subject_origin_overall_project_financing_details_currency_2, :subject_origin_overall_project_financing_details_amount_2, :subject_origin_overall_project_financing_details_subject_3, :subject_origin_overall_project_financing_details_currency_3, :subject_origin_overall_project_financing_details_amount_3,
			
			# # Ihr Kunde ----------------------------------------
			:importer_company_name, :importer_street_hno, :importer_plz, :importer_city, :importer_country, :importer_shipment_company_name, :importer_shipment_country, :importer_shipment_street_hno, :importer_shipment_plz, :importer_shipment_address_line2, :importer_shipment_city, :has_significant_influence_on_importer_management, :explain_exporter_influence_on_importer_management, :has_payment_experience_with_importer, :explain_previous_payment_experience_with_importer, :exporter_offers_servicing_for_goods, :importer_email, :importer_phone_number, :importer_tax_id,
			
			# # Ihre Finanzierung --------------------------------
			:loan_duration, :accept_partial_refinancing, :has_agreed_payment_term_already, :payment_term, :is_interest_charged_to_importer, :downpayment_delivery_currency_payment_term_short, :downpayment_delivery_amount_payment_term_short, :downpayment_delivery_currency_payment_term_mid, :downpayment_delivery_amount_payment_term_mid, :downpayment_delivery_description_payment_term_mid, :agreed_prepayment_payment_term_mid, :agreed_payments_output_payment_term_mid, :agreed_payments_amount_payment_term_mid, :downpayment_delivery_currency_payment_term_both, :downpayment_delivery_amount_payment_term_both, :downpayment_delivery_description_payemnt_term_both, :agreed_payments_currency_payment_term_both, :agreed_payments_amount_payment_term_both, :agreed_payments_output_payment_term_both, :agreed_payments_time_payment_term_both, :agreed_payments_some_output_payment_term_both, :number_of_installments_payment_term_mid, :interest_currency, :interest_value, :fixed_interest_rate, :fixed_interest_rate_value, :variable_interest_rate, :interest_calculation_description, :loan_term_start_description_payment_term_both, :payment_vehichle_payment_term_both,
			
			# # Notwendiges zum Schluss --------------------------
			:has_previously_used_hermes_cover, :years_trading_without_hermes_insurance, :experience_with_importer_country, :adequate_claims_management, :exporter_name, :exporter_dn_no, :exporter_telephone, :exporter_street_hno, :exporter_plz, :exporter_country, :exporter_city, :employees_count, :revenue_last_year, :exporter_representative_firstname, :exporter_representative_lastname, :exporter_representative_email, :exporter_representative_function, :exporter_representative_department, :does_corruption_declaration_apply, :explain_corruption_sanctions, :give_consortiums_companies, :is_all_information_provided_with_best_of_knowledge, :has_accepted_terms_conditions, :has_read_privacy_policy, :has_read_all_instructions,
			
			# # Documents ----------------------------------------
			:annual_financial_statement_importer, :annual_financial_statement_importer_second_last, :export_contract_or_bills, :credit_bureaus_importer, :self_declaration, :environment_social_audit, :project_memorandum_exporter_business, :other_document,
			
			# # Orphan ----------------------------------------
			:agreed_payments_output_payment_term_short,
			:agreed_payments_output_payment_term_short_2, :agreed_payments_output_payment_term_short_3, :agreed_payments_output_payment_term_short_4, :agreed_payments_output_payment_term_short_5,
			
			:advance_payment_amount_payment_term_both, :advance_payment_amount_payment_term_both_2, :advance_payment_amount_payment_term_both_3, :advance_payment_amount_payment_term_both_4, :advance_payment_amount_payment_term_both_5,
			
			:agreed_payments_time_payment_term_short, :agreed_payments_time_payment_term_short_2, :agreed_payments_time_payment_term_short_3, :agreed_payments_time_payment_term_short_4, :agreed_payments_time_payment_term_short_5,
			
			:agreed_payments_some_output_payment_term_short, :agreed_payments_some_output_payment_term_short_2, :agreed_payments_some_output_payment_term_short_3, :agreed_payments_some_output_payment_term_short_4, :agreed_payments_some_output_payment_term_short_5,
			
			:advance_payment_description_payment_term_both, :payment_vehichle_payment_term_short, :repayment_structure_payment_term_mid,
			:receive_deposit_time_payment_term_mid, :repayment_profile_structure_payment_term_mid, :loan_term_start_payment_term_mid, :loan_term_other_description_payment_term_mid, :number_of_installments_payment_term_short, :advance_payment_currency_payment_term_both,
			
			:deposit_received_payment_term_both, :repayment_structure_payment_term_both, :credit_start_date_payment_term_both, :credit_start_special_description_payment_term_both, :number_of_installments_payment_term_both, :payment_vehichle_explain_payment_term_both,
			
			:source_of_fund_amount, :goods_overhauled_location, :explain_special_contract_structure, :graphic_representation_project_participants, :contract_currency, :risk_shipment_risk_cover, :risk_supplier_credit_cover, :further_lower_economic_risk, :loan_term, :is_delivered_at_this_address, :is_exporting_to_private_sector,
			
			# # Invite Importer ----------------------------------------
			:invitation_message_to_importer, :invitation_importer_representative_name, :invitation_importer_company_name, :invitation_importer_email, :has_invited_importer,
			
			# # Varengold Datapoints ----------------------------------------
			:explain_product_service, :sensitive_area_type, :remaining_life, :manufacture_year, :why_good_overhauled_abroad, :goods_overhaul_country, :proportion_of_goods_overhauled_abroad, :describe_why_overhault_didnot_take_in_germany, :all_rawgoods_supplier_amount, :partly_rawgoods_supplier_amount, :importer_address_line1, :importer_address_line2, :importer_company_registration_number, :importer_rating, :importer_rating_agency, :importer_rating_issued_date, :importer_mother_company, :importer_company_corporate_form, :importer_industry, :exporter_address_line1, :exporter_address_line2, :exporter_tax_id, :exporter_revenue, :exporter_total_assets, :exporter_last_fiscal_year, :external_rating_available, :exporter_rating, :rating_agency, :rating_issued_date, :exporter_external_rating_available, :exporter_rating_agency, :exporter_rating_issued_date, :importer_external_rating_available, :is_company_controlled_by_mother_company, :importer_mother_company_industry, :importer_mother_company_corporate_form, :are_goods_overhauled, :exporter_company_registration_number, :registration_court, :exporter_date_founded,
			
			insurance_supplies_from_foreign_origins_attributes: InsuranceSuppliesFromForeignOrigin.attribute_names.map(&:to_sym).push(:_destroy), insurance_guarantees_attributes: InsuranceGuarantee.attribute_names.map(&:to_sym).push(:_destroy), insurance_agreed_payments_attributes: InsuranceAgreedPayment.attribute_names.map(&:to_sym).push(:_destroy), insurance_agreed_payment_mid_longs_attributes: InsuranceAgreedPaymentMidLong.attribute_names.map(&:to_sym).push(:_destroy), insurance_multiple_shipments_attributes: InsuranceMultipleShipment.attribute_names.map(&:to_sym).push(:_destroy), insurance_source_of_funds_attributes: InsuranceSourceOfFund.attribute_names.map(&:to_sym).push(:_destroy), insurance_application_of_funds_attributes: InsuranceApplicationOfFund.attribute_names.map(&:to_sym).push(:_destroy), insurance_extra_billed_items_attributes: InsuranceExtraBilledItem.attribute_names.map(&:to_sym).push(:_destroy),
			insurance_special_repayment_profiles_attributes: InsuranceSpecialRepaymentProfile.attribute_names.map(&:to_sym).push(:_destroy)
		)
	end
end
