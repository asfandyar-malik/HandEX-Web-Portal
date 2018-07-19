class TradeinfosController < ApplicationController

  before_action :set_tradeinfo, except: [:index, :new, :create]
  before_action :authenticate_user!, except: [:show]
  before_action :is_authorised, only: [:exportinformation, :update]

  def index
    @tradeinfos = current_user.tradeinfos
  end

  # GET /tradeinfos/new
  def new
    @tradeinfo = current_user.tradeinfos.build
  end

  # POST /tradeinfos
  # POST /tradeinfos.json
  def create
    @tradeinfo = current_user.tradeinfos.build(tradeinfo_params)
    if @tradeinfo.save
      # redirect_to exportinformation_tradeinfo_path(@tradeinfo), notice: "Created...."
      redirect_to exportinformation_tradeinfo_path(@tradeinfo), notice: "Created...."
    else
      flash[:alert] = "Something went wrong while creating...."
      render :new
    end
  end

  def show
    @buyer = @tradeinfo.buyer
  end


  # PATCH/PUT /tradeinfos/1
  # PATCH/PUT /tradeinfos/1.json
  def update
    if @tradeinfo.update(tradeinfo_params)
      flash[:notice] = "TradeInfo Updated...."
      if is_ready_third_step
        redirect_to eligibility_tradeinfo_path(@tradeinfo)
      else
        redirect_to importinformation_tradeinfo_path
      end
    else
      flash[:alert] = "Something went wrong while updating"
    end
  end

  # DELETE /tradeinfos/1
  # DELETE /tradeinfos/1.json
  def destroy
    @tradeinfo.destroy
    respond_to do |format|
      format.html { redirect_to tradeinfos_url, notice: 'Tradeinfo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_tradeinfo
    @tradeinfo = Tradeinfo.find(params[:id])
  end


  def insuranceresult
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

    @left = values[0]
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

    # puts "---------XX---------"
    # puts @tradeinfo.insurance.expected_date_product_received_importer
    # puts @tradeinfo.insurance.date_contractsigned_with_importer
    # @datedifference = @tradeinfo.insurance.expected_date_product_received_importer - @tradeinfo.insurance.date_contractsigned_with_importer
    # puts @datedifference
    #
    # date = @datedifference.to_s.split("/")
    # @days = date[0]
    # puts @days
    #
    # @daysDivTwo = Integer(@days) / 2
    # puts @daysDivTwo

    @timeduration = @tradeinfo.financial.time_duration

    puts "timeduration #{@timeduration}"

    date = @timeduration.to_s.split(" ")
    @months = date[0]
    puts @months
    puts @left
    puts @right

    puts Integer(@months)
    puts Float(@left)
    puts Float(@right)

    @monthsLeftRight = (Integer(@months) * Float(@left)) + Float(@right)
    puts "monthsLeftRight #{@monthsLeftRight}"

    @mainInsurancePremium = @total_financing_requested * Float(@monthsLeftRight)/100
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

  private

  def is_authorised
    redirect_to root_path, alert: "You don't have permission" unless current_user.id = @tradeinfo.user_id
  end

  def tradeinfo_params
    params.require(:tradeinfo).permit(:goods, :category, :companyName, :companyEmail, :companyPhone, :importerName, :importerEmail, :taxId)
    # :exportinformation, :category, :companyName
    # params.fetch(:tradeinfo, {})
  end

  def is_ready_first_step
    @tradeinfo.goods && @tradeinfo.category
  end

  def is_ready_second_step
    @tradeinfo.goods && @tradeinfo.category && @tradeinfo.companyName && @tradeinfo.companyEmail && @tradeinfo.companyPhone
  end

  def is_ready_third_step
    @tradeinfo.goods && @tradeinfo.category && @tradeinfo.companyName && @tradeinfo.companyPhone && @tradeinfo.importerName && @tradeinfo.importerEmail && @tradeinfo.taxId
  end
end