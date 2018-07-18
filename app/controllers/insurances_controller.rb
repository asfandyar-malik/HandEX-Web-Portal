class InsurancesController < ApplicationController

  before_action :set_insurance, except: [:index, :new, :create]
  before_action :authenticate_user!, except: [:show]
  before_action :is_authorised, only: [:exportinformation, :update]


  # GET /insurances/new
  def new
    flash[:alert] = "Entering Insurance new"
    @tradeinfo = Tradeinfo.find(params[:tradeinfo_id])
    @insurance = @tradeinfo.build_insurance
  end

  # POST /insurances
  # POST /insurances.json
  def create
    flash[:alert] = "Entering Insurance create"
    @tradeinfo = Tradeinfo.find(params[:tradeinfo_id])
    @insurance = @tradeinfo.build_insurance(insurance_params)

    if @insurance.save
      redirect_to new_tradeinfo_bankaccount_path(@tradeinfo), notice: "Insurance Created...."
    else
      flash[:alert] = "Something went wrong while creating...."
      render :new
    end
  end


  # PATCH/PUT /insurances/1
  # PATCH/PUT /insurances/1.json
  def update
    if @insurance.update(insurance_params)
      flash[:notice] = "Updated Insurance...."
      redirect_to new_tradeinfo_bankaccount_path
    else
      flash[:alert] = "Something went wrong while updating"
    end
  end

  # DELETE /insurances/1
  # DELETE /insurances/1.json
  def destroy
    @insurance.destroy
    respond_to do |format|
      format.html { redirect_to insurances_url, notice: 'insurances was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_insurance
    @insurance = insurance.find(params[:id])
  end

  def is_authorised
    redirect_to root_path, alert: "You don't have permission" unless current_tradeinfo.id = @insurance.tradeinfo_id
  end

  def insurance_params
    params.require(:insurance).permit(:insurance_cover, :country_category, :buyer_category)
  end

  def is_ready_first_step
    @insurance.insurance_cover && @insurance.insurance_cover
  end

  def is_ready_second_step
    @insurance.insurance_cover && @insurance.insurance_cover && @insurance.insurance_cover
  end

end
