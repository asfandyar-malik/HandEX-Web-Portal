class OnboardingsController < ApplicationController
    
    layout "onboarding", only: [:new, :edit, :index]
    before_action :set_onboarding, only: [:show, :edit, :update, :destroy]
    
    # GET /onboardings
    # GET /onboardings.json
    def index
        @onboardings = Onboarding.all
    end
    
    # GET /onboardings/1
    # GET /onboardings/1.json
    def show
    end
    
    # GET /onboardings/new
    def new
        @onboarding = Onboarding.new
    end
    
    # GET /onboardings/1/edit
    def edit
    end
    
    # POST /onboardings
    # POST /onboardings.json
    def create
        @onboarding = Onboarding.new(onboarding_params)
        
        respond_to do |format|
            if @onboarding.save
                format.html { redirect_to @onboarding, notice: 'Onboarding was successfully created.' }
                format.json { render :show, status: :created, location: @onboarding }
            else
                format.html { render :new }
                format.json { render json: @onboarding.errors, status: :unprocessable_entity }
            end
        end
    end
    
    # PATCH/PUT /onboardings/1
    # PATCH/PUT /onboardings/1.json
    def update
        respond_to do |format|
            if @onboarding.update(onboarding_params)
                format.html { redirect_to @onboarding, notice: 'Onboarding was successfully updated.' }
                format.json { render :show, status: :ok, location: @onboarding }
            else
                format.html { render :edit }
                format.json { render json: @onboarding.errors, status: :unprocessable_entity }
            end
        end
    end
    
    # DELETE /onboardings/1
    # DELETE /onboardings/1.json
    def destroy
        @onboarding.destroy
        respond_to do |format|
            format.html { redirect_to onboardings_url, notice: 'Onboarding was successfully destroyed.' }
            format.json { head :no_content }
        end
    end
    
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_onboarding
        @onboarding = Onboarding.find(params[:id])
    end
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def onboarding_params
        params
            .require(:onboarding)
            .permit(
                # compnay information -------------------------------------
                :company_name,
                :number_of_employees,
                :year_founded,
                :legal_form,
                :address_line_one,
                :address_line_two,
                :post_code,
                :country,
                :tax_id,
                :commercial_register_name,
                :commercial_register_number,
                :date_of_registration,
                :last_fiscal_year,
                # Euler Hermes information -------------------------------------
                :is_euler_cover_in_past,
                :euler_dnnr_number,
                :is_insolvent_in_last_five_years,
                :is_investigated_in_last_five_years,
                :is_business_with_sanctioned_company,
                :business_with_sanctioned_company_name,
                # Shareholder information -------------------------------------
                :shareholder_name,
                :shareholder_participation,
                :is_shareholder_of_another_company,
                :shareholder_of_another_company_name,
                :shareholder_of_another_company_participation,
                :is_legal_representative_pep,
                :legal_representative_pep_firstname,
                :legal_representative_pep_lastname,
                :legal_representative_pep_dob,
                :legal_representative_pep_address_line_one,
                :legal_representative_pep_address_line_one,
                :legal_representative_pep_postcode,
                :legal_representative_pep_country,
                :legal_representative_pep_reason,
                :is_source_of_fund_own_assets,
                :is_source_of_fund_assets_transfer,
                :is_source_of_fund_income_operations,
                :is_source_of_fund_assets_sales,
                :is_source_of_fund_insurance_indemnization,
                :is_source_of_fund_no_assets,
                :is_source_of_fund_other,
                :is_source_of_fund_other_specify,
                # Business and Financials information -------------------------------------
                :business_activity_explanation,
                :change_corporate_purpose,
                :change_corporate_purpose,
                :change_corporate_purpose_how,
                :see_your_self_as,
                :countries_of_main_business_activities,
                :most_important_customer_name,
                :most_important_customer_country,
                :most_important_customer_volume,
                :most_important_supplier_name,
                :most_important_supplier_country,
                :most_important_supplier_volume,
                :usual_payment_behaviour_supplier_buyer,
                :order_amount_backlog,
                :months_to_complete_backlog,
                :expected_revenues_this_year,
                :percentage_share_export_revenue_lastyear,
                :percentage_share_export_revenue_previousyear,
                :percentage_share_export_revenue_eu,
                :percentage_share_export_revenue_othercountries,
                :expected_ebit_this_year,
                :expected_net_income_this_year,
                :explanation_of_dunning_process,
                :is_any_default_last_two_year,
                :default_last_two_year_explain,
                :is_any_external_rating,
                :external_rating_specify
                )
    end
end