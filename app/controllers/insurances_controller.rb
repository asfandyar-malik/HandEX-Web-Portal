class InsurancesController < ApplicationController
  
    before_action :set_insurance, except: [:index, :new, :create]
    before_action :authenticate_user!, except: [:show]
    before_action :is_authorised, only: [:exportinformation, :update]

    def index
      @insurance = current_tradeinfo.insurance
    end

    # GET /insurances/new
    def new
      @insurance = current_tradeinfo.build_insurance()
    end

    # POST /insurances
    # POST /insurances.json
    def create
      @insurance = current_tradeinfo.insurance.build(insurance_params)
      if @insurance.save
        redirect_to exportinformation_tradeinfo_path(@insurance), notice: "Created...."
      else
        flash[:alert] = "Something went wrong while creating...."
        render :new
      end
    end

    def exportinformation
    end

    def importinformation
    end

    def auxillary
    end

    def insurances
    end

    def eligibility
    end

    # GET /insurances/1/edit
    def edit
    end

    def thank
      # something here if needed
    end

    # PATCH/PUT /insurances/1
    # PATCH/PUT /insurances/1.json
    def update
      if @insurance.update(insurance_params)
        flash[:notice] = "Updated...."
        if is_ready_third_step
          redirect_to thank_tradeinfo_path
        else
          redirect_to importinformation_tradeinfo_path
        end
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
      redirect_to root_path, alert: "You don't have permission" unless current_tradeinfo.id = @insurance.tradeinfo  _id
    end

    def insurance_params
      params.require(:insurances).permit(:insurance_cover, :country_category, :buyer_category)
    end

    def is_ready_first_step
      @insurance.insurance_cover && @insurance.insurance_cover
    end

    def is_ready_second_step
      @insurance.insurance_cover && @insurance.insurance_cover && @insurance.insurance_cover
    end

  end
