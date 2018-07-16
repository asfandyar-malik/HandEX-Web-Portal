class FinancialsController < ApplicationController
  
    before_action :set_financial, except: [:index, :new, :create]
    before_action :authenticate_user!, except: [:show]
    before_action :is_authorised, only: [:exportinformation, :update]

    def index
      @financial = current_user.financial
    end

    # GET /financials/new
    def new
      @financial = current_user.build_financial()
    end

    # POST /financials
    # POST /financials.json
    def create
      @financial = current_user.financials.build(financial_params)
      if @financial.save
        redirect_to exportinformation_tradeinfo_path(@financial), notice: "Created...."
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

    def financials
    end

    def eligibility
    end

    # GET /financials/1/edit
    def edit
    end

    def thank
      # something here if needed
    end

    # PATCH/PUT /financials/1
    # PATCH/PUT /financials/1.json
    def update
      if @financial.update(financial_params)
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

    # DELETE /financials/1
    # DELETE /financials/1.json
    def destroy
      @financial.destroy
      respond_to do |format|
        format.html { redirect_to financials_url, notice: 'financial was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_financial
      @financial = financial.find(params[:id])
    end

    def is_authorised
      redirect_to root_path, alert: "You don't have permission" unless current_user.id = @financial.user_id
    end

    def financial_params
      params.require(:financial).permit( :total_financing_required, :time_duration, :projected_sales_18_19, :projected_sales_20_21, :net_profitability,
                                         :net_worth, :ifsc , :outstanding_bank_nbfc_facility, :name_of_institution, :type_of_loan, :size_of_loan,
                                         :defaulted_or_overdue, :explain_defaulted_or_overdue, :receivables_factored, :explain_receivables_factored)
    end

    def is_ready_first_step
      @financial.name && @financial.country
    end

    def is_ready_second_step
      @financial.name && @financial.country && @financial.street_address && @financial.street_address && @financial.street_address
    end

  end
