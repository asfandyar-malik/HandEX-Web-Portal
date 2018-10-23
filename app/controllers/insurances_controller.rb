class InsurancesController < ApplicationController
    
    before_action :set_insurance, except: [:index, :new, :create]
    before_action :authenticate_user!, except: [:show]
    before_action :is_authorised, only: [:update]
    
    def index
        @tradeinfo = Tradeinfo.find(params[:tradeinfo_id])
        @insurance = @tradeinfo.insurance
    end
    
    # GET /insurances/new
    def new
        flash[:notice] = "Entering Insurance new"
        @tradeinfo     = Tradeinfo.find(params[:tradeinfo_id])
        @insurance     = @tradeinfo.build_insurance
    end
    
    # POST /insurances
    # POST /insurances.json
    def create
        flash[:notice] = "Entering Insurance create"
        @tradeinfo     = Tradeinfo.find(params[:tradeinfo_id])
        @insurance     = @tradeinfo.build_insurance(insurance_params)
        
        if @insurance.save
            redirect_to hermeskycone_tradeinfo_insurance_path(@tradeinfo, @insurance, @financial), notice: "Insurance Created...."
        else
            flash[:notice] = "Something went wrong while creating...."
            render :new
        end
    end
    
    # PATCH/PUT /insurances/1
    # PATCH/PUT /insurances/1.json
    def update
        if @insurance.update(insurance_params)
            flash[:notice] = "Updated Insurance...."

            if is_ready_hermes_kyc_sixth
                flash[:notice] = "sixth...."
                redirect_to thankinsurance_tradeinfo_insurance_path(@tradeinfo, @insurance)
            elsif is_ready_hermes_kyc_fifth
                flash[:notice] = "fifth...."
                redirect_to hermeskycfive_tradeinfo_insurance_path(@tradeinfo, @insurance)
            elsif is_ready_hermes_kyc_fourth
                flash[:notice] = "fourth...."
                redirect_to hermeskycfour_tradeinfo_insurance_path(@tradeinfo, @insurance)
            elsif is_ready_hermes_kyc_three
                flash[:notice] = "three...."
                redirect_to hermeskycthree_tradeinfo_insurance_path(@tradeinfo, @insurance)
            elsif is_ready_hermes_kyc_two
                flash[:notice] = "two...."
                redirect_to hermeskyctwo_tradeinfo_insurance_path(@tradeinfo, @insurance)
            else
                redirect_to importinformation_tradeinfo_path
            end
        else
            flash[:alert] = "Something went wrong while updating"
        end
    end
    
    def insuranceresult
        
        @tradeinfo = Tradeinfo.find(params[:tradeinfo_id])
        require 'csv'
        
        fickers = {}
        CSV.foreach("db/data/country_classification.csv", :headers => true, :header_converters => :symbol, :converters => :all) do |row|
            fickers[row.fields[0]] = Hash[row.headers[1..-1].zip(row.fields[1..-1])]
        end
        
        $country_classification = fickers[@tradeinfo.buyer.country][:classification]
        
        if $country_classification == "-"
            redirect_to rejected_tradeinfo_path(@tradeinfo, @financial, @buyer), notice: "Rejected because country has - risk classification ...."
        elsif $country_classification == 1
            $country_risk_code = "one"
        elsif $country_classification == 2
            $country_risk_code = "two"
        elsif $country_classification == 3
            $country_risk_code = "three"
        elsif $country_classification == 4
            $country_risk_code = "four"
        elsif $country_classification == 5
            $country_risk_code = "five"
        elsif $country_classification == 6
            $country_risk_code = "six"
        elsif $country_classification == 7
            $country_risk_code = "seven"
        end
        
        tickers = {}
        CSV.foreach("db/data/countrycompanyrisk.csv", :headers => true, :header_converters => :symbol, :converters => :all) do |row|
            tickers[row.fields[0]] = Hash[row.headers[1..-1].zip(row.fields[1..-1])]
        end
        
        @ticker = tickers[$country_risk_code][:cc0]
        
        values = @ticker.split(" ")
        
        @left  = values[0]
        @right = values[1]
        
        puts @left
        puts @right
        
        puts "left #{@left} "
        
        
        @total_financing_requested = Float(@tradeinfo.financial.total_financing_required)
        
        if @total_financing_requested > 100000000
            @application_fee = 6000
        elsif @total_financing_requested <= 25000
            @application_fee = 100
        elsif @total_financing_requested <= 50000
            @application_fee = 200
        elsif @total_financing_requested <= 125000
            @application_fee = 400
        elsif @total_financing_requested <= 250000
            @application_fee = 600
        elsif @total_financing_requested <= 500000
            @application_fee = 800
        elsif @total_financing_requested <= 2500000
            @application_fee = 600
        elsif @total_financing_requested <= 5000000
            @application_fee = 1500
        end
        
        puts "application_fee #{@application_fee} "
        
        if @application_fee > 3000000
            redirect_to rejected_tradeinfo_path(@tradeinfo, @financial, @buyer), notice: "Rejected because country has - risk classification ...."
        end
        
        puts "application_fee #{@application_fee} "
        
        @timeduration = @tradeinfo.financial.time_duration
        
        puts "timeduration #{@timeduration}"
        
        date    = @timeduration.to_s.split(" ")
        @months = date[0]
        puts @months
        puts @left
        puts @right
        
        puts Integer(@months)
        puts Float(@left)
        puts Float(@right)
        
        @monthsLeftRight = (Integer(@months) * Float(@left)) + Float(@right)
        puts "monthsLeftRight #{@monthsLeftRight}"
        
        @mainInsurancePremium = @total_financing_requested * Float(@monthsLeftRight) / 100
        puts Float(@mainInsurancePremium)
        
        @foreignCurrencyCoverage = 0.1 * @mainInsurancePremium
        puts "foreignCurrencyCoverage #{@foreignCurrencyCoverage}"
        
        @reducingDeductible = 0.1 * @foreignCurrencyCoverage
        puts "reducingDeductible #{@reducingDeductible }"
        
        # 0.03 % max 12500 min 50
        @executionAmountOne = 0.0003 * @total_financing_requested
        puts "@executionAmountOne: #{@executionAmountOne}"
        
        if @executionAmountOne <= 50
            @executionAmountOne = 50
        elsif @executionAmountOne >= 12500
            @executionAmountOne = 12500
        end
        puts "executionAmount2: #{@executionAmountOne}"
        
        @finalSum = @foreignCurrencyCoverage + @reducingDeductible + @application_fee + @executionAmountOne + @mainInsurancePremium
        
        puts "final Sum: #{ @finalSum }"
    end
    
    def hermeskycone
        
        @tradeinfo = Tradeinfo.find(params[:tradeinfo_id])
        require 'csv'
        
        fickers = {}
        CSV.foreach("db/data/country_classification.csv", :headers => true, :header_converters => :symbol, :converters => :all) do |row|
            fickers[row.fields[0]] = Hash[row.headers[1..-1].zip(row.fields[1..-1])]
        end
        
        $country_classification = fickers[@tradeinfo.buyer.country][:classification]
        
        if $country_classification == "-"
            redirect_to rejected_tradeinfo_path(@tradeinfo, @financial, @buyer), notice: "Rejected because country has - risk classification ...."
        elsif $country_classification == 1
            $country_risk_code = "one"
        elsif $country_classification == 2
            $country_risk_code = "two"
        elsif $country_classification == 3
            $country_risk_code = "three"
        elsif $country_classification == 4
            $country_risk_code = "four"
        elsif $country_classification == 5
            $country_risk_code = "five"
        elsif $country_classification == 6
            $country_risk_code = "six"
        elsif $country_classification == 7
            $country_risk_code = "seven"
        end
        
        tickers = {}
        CSV.foreach("db/data/countrycompanyrisk.csv", :headers => true, :header_converters => :symbol, :converters => :all) do |row|
            tickers[row.fields[0]] = Hash[row.headers[1..-1].zip(row.fields[1..-1])]
        end
        
        @ticker = tickers[$country_risk_code][:cc0]
        
        values = @ticker.split(" ")
        
        @left  = values[0]
        @right = values[1]
        
        puts @left
        puts @right
        
        @total_financing_requested = Float(@tradeinfo.financial.total_financing_required)
        
        if @total_financing_requested > 100000000
            @application_fee = 6000
        elsif @total_financing_requested <= 25000
            @application_fee = 100
        elsif @total_financing_requested <= 50000
            @application_fee = 200
        elsif @total_financing_requested <= 125000
            @application_fee = 400
        elsif @total_financing_requested <= 250000
            @application_fee = 600
        elsif @total_financing_requested <= 500000
            @application_fee = 800
        elsif @total_financing_requested <= 2500000
            @application_fee = 600
        elsif @total_financing_requested <= 5000000
            @application_fee = 1500
        end
        
        if @application_fee > 3000000
            redirect_to rejected_tradeinfo_path(@tradeinfo, @financial, @buyer), notice: "Rejected because country has - risk classification ...."
        end
        
        puts "application_fee #{@application_fee} "
        
        @timeduration = @tradeinfo.financial.time_duration
        
        puts "timeduration #{@timeduration}"
        
        date    = @timeduration.to_s.split(" ")
        @months = date[0]
        puts @months
        puts @left
        puts @right
        
        puts Integer(@months)
        puts Float(@left)
        puts Float(@right)
        
        @monthsLeftRight = (Integer(@months) * Float(@left)) + Float(@right)
        puts "monthsLeftRight #{@monthsLeftRight}"
        
        @mainInsurancePremium = @total_financing_requested * Float(@monthsLeftRight) / 100
        puts Float(@mainInsurancePremium)
        
        @foreignCurrencyCoverage = 0.1 * @mainInsurancePremium
        puts "foreignCurrencyCoverage #{@foreignCurrencyCoverage}"
        
        @reducingDeductible = 0.1 * @foreignCurrencyCoverage
        puts "reducingDeductible #{@reducingDeductible }"
        
        # 0.03 % max 12500 min 50
        @executionAmountOne = 0.0003 * @total_financing_requested
        puts "@executionAmountOne: #{@executionAmountOne}"
        
        if @executionAmountOne <= 50
            @executionAmountOne = 50
        elsif @executionAmountOne >= 12500
            @executionAmountOne = 12500
        end
        puts "executionAmount2: #{@executionAmountOne}"
        
        @finalSum = @foreignCurrencyCoverage + @reducingDeductible + @application_fee + @executionAmountOne + @mainInsurancePremium
        
        puts "final Sum: #{ @finalSum }"
    
    end
    
    def hermeskyctwo
        @tradeinfo = Tradeinfo.find(params[:tradeinfo_id])
        @insurance = @tradeinfo.insurance
    end
    
    def hermeskycthree
        @tradeinfo = Tradeinfo.find(params[:tradeinfo_id])
        @insurance = @tradeinfo.insurance
    end
    
    def hermeskycfour
        @tradeinfo = Tradeinfo.find(params[:tradeinfo_id])
        @insurance = @tradeinfo.insurance
    end
    
    def hermeskycfive
        @tradeinfo = Tradeinfo.find(params[:tradeinfo_id])
        @insurance = @tradeinfo.insurance
    end
    
    def hermeskycsummary
    end
    
    # DELETE /insurances/1
    # DELETE /insurances/1.json
    def destroy
        @insurance.destroy
        respond_to do |format|
            format.html {redirect_to insurances_url, notice: 'insurances was successfully destroyed.'}
            format.json {head :no_content}
        end
    end
    
    private
    
    # Use callbacks to share common setup or constraints between actions.
    def set_insurance
        @insurance = Insurance.find(params[:id])
    end
    
    def is_authorised
        @tradeinfo = Tradeinfo.find(params[:tradeinfo_id])
        redirect_to root_path, alert: "You don't have permission" unless current_user.id = @tradeinfo.user_id
    end

    def is_ready_first_step
        @insurance.insurance_cover && @insurance.insurance_cover
    end

    def is_ready_hermes_kyc_two
        @insurance.country && @insurance.is_investment_good
    end

    def is_ready_hermes_kyc_three
        @insurance.risk_supplier_credit_cover || @insurance.risk_shipment_risk_cover  || @insurance.risk_contractual_warranty_coverage || @insurance.risk_avaline_guarantee  || @insurance.risk_further_coverage
    end

    def is_ready_hermes_kyc_fourth
        @insurance.describe_export_business && @insurance.reason_for_buying_good && @insurance.explain_product_branch
    end

    def is_ready_hermes_kyc_fifth
        @insurance.ak_number && @insurance.company_name && @insurance.tax_number
    end

    def is_ready_hermes_kyc_sixth
        @insurance.experience_with_export_country && @insurance.experience_with_export_country && @insurance.adequate_claims_management
    end
    
    def insurance_params
        params.require(:insurance).permit(:insurance_cover, :country_category, :buyer_category, :expected_date_product_received_importer, :date_contractsigned_with_importer,
                                          :country, :is_investment_good, :contract_value, :payment_deadline, :private_sector, :public_sector,
                                          :risk_avaline_guarantee, :risk_contractual_warranty_coverage, :risk_shipment_risk_cover, :risk_supplier_credit_cover,
                                          :risk_further_coverage, :describe_export_business, :reason_for_buying_good, :also_provide_service_training, :product_branch,
                                          :explain_product_branch, :part_of_big_project_yes, :part_of_big_project_no, :explain_complete_project,
                                          :overall_responsibility_project_taken, :overall_project_volume_currency, :overall_project_volume, :use_of_fund,
                                          :use_of_fund_currency,:amount_of_fund,:delivery_doesnt_affects_sensitive_areas,:delivery_affects_natural_reserves,:delivery_affects_indigenous_people,
                                          :delivery_affects_cultural_heritage,:delivery_affects_other,:delivery_affects_other_explain,:yes_export_requires_exportlicense,:no_export_requires_exportlicense,
                                          :which_regulation_requires_exportlicense,:exportlicense_status,:yes_deliver_secondhand_goods,:no_dont_deliver_secondhand_goods,:product_original_date_of_manifacture,
                                          :product_remaining_life,:yes_good_overhauled_before_reselling,:no_good_arent_overhauled_before_reselling,:goods_overhauled_location,
                                          :yes_contract_already_signed_all_parties,:no_contract_already_signed_all_parties,:goods_completion_date,:companny_internal_id,
                                          :yes_special_contract_structure,:no_special_contract_structure,:explain_special_contract_structure,:graphic_representation_project_participants,
                                          :contract_currency,:order_value_export_business_currency,:order_value_export_business_currency_amount,:total_delivery_value,
                                          :percentage_of_spare_parts_in_whole_order,:more_components_open_to_exporter_currency,:more_components_open_to_exporter_amount,
                                          :more_components_open_to_exporter_explain,:ja_customer_counts_interest,:no_customer_counts_interest,:interest_currency,:interest_amount,
                                          :yes_price_adjustment_clause,:no_price_adjustment_clause,:explain_billing_methods,:yes_multiple_deliveries,:no_multiple_deliveries,
                                          :delivery_start,:delivery_end,:other_important_delivery_information,:other_important_delivery_milestones,:payment_term_shortterm,
                                          :payment_term_middleterm,:payment_term_both,:downpayment_delivery_currency,:downpayment_delivery_amount,:downpayment_delivery_description,
                                          :source_of_fund, :source_of_fund_currency, :source_of_fund_amount, :agreed_payments_currency, :agreed_payments_amount,
                                          :agreed_payments_output,:agreed_payments_time,:agreed_payments_some_output,:payment_vehichle,:receive_deposit_time,:repayment_profile_structure,
                                          :loan_term_start,:loan_term_other_description,:number_of_installments,:down_payment_before_delivery_currency,:down_payment_before_delivery_amount,
                                          :down_payment_before_delivery_explain,:sonstige_kurzfrist_agreed_payment_currency,:sonstige_kurzfrist_agreed_payment_amount,
                                          :sonstige_kurzfrist_agreed_payment_percent,:sonstige_kurzfrist_agreed_payment_date,:sonstige_kurzfrist_agreed_payment_outpout,
                                          :sonstige_kurzfrist_advance_payment_currency,:sonstige_kurzfrist_advance_payment_amount,:sonstige_kurzfrist_advance_payment_explain,
                                          :sonstige_kurzfrist_deposit_received,:sonstige_kurzfrist_repayment_structure,:sonstige_kurzfrist_credit_start,
                                          :sonstige_kurzfrist_credit_start_sonstige_explain,:sonstige_kurzfrist_number_of_installments,:sonstige_kurzfrist_payment_vehichle_explain,
                                          :yes_sonstige_kurzfrist_certificate_of_origin,:no_sonstige_kurzfrist_certificate_of_origin,:part_of_goods__sonstige_kurzfrist_certificate_of_origin,
                                          :ak_number, :company_name, :tax_number, :years_trading_without_hermes_cover, :experience_with_export_country, :adequate_claims_management)
    end
    

end