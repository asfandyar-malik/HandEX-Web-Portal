class OfficialdocumentsController < ApplicationController

    before_action :set_officialdocument, except: [:index, :new, :create]
    before_action :authenticate_user!, except: [:show]
    before_action :is_authorised, only: [:update]

    def index
      @tradeinfo = Tradeinfo.find(params[:tradeinfo_id])
      @officialdocument = @tradeinfo.officialdocument
    end

    # GET /officialdocuments/new
    def new
      flash[:notice] = "Entering Officialdocument new"
      @tradeinfo = Tradeinfo.find(params[:tradeinfo_id])
      @officialdocument = @tradeinfo.build_officialdocument
    end

    # POST /officialdocuments
    # POST /officialdocuments.json
    def create
      flash[:notice] = "Entering Officialdocument create"
      @tradeinfo = Tradeinfo.find(params[:tradeinfo_id])
      @officialdocument = @tradeinfo.build_officialdocument(officialdocument_params)

      if @officialdocument.save
        redirect_to thank_tradeinfo_path(@tradeinfo, @financial), notice: "Officialdocument Created...."
      else
        flash[:notice] = "Something went wrong while creating...."
        render :new
      end
    end

    # PATCH/PUT /officialdocuments/1
    # PATCH/PUT /officialdocuments/1.json
    def update
      if @officialdocument.update(officialdocument_params)
        flash[:notice] = "Updated Officialdocument...."
        redirect_to thank_tradeinfo_path(@tradeinfo, @financial)
      else
        flash[:alert] = "Something went wrong while updating"
      end
    end

    # DELETE /officialdocuments/1
    # DELETE /officialdocuments/1.json
    def destroy
      @officialdocument.destroy
      respond_to do |format|
        format.html { redirect_to officialdocuments_url, notice: 'officialdocuments was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_officialdocument
      @officialdocument = Officialdocument.find(params[:id])
    end

    def is_authorised
      @tradeinfo = Tradeinfo.find(params[:tradeinfo_id])
      redirect_to root_path, alert: "You don't have permission" unless current_user.id = @tradeinfo.user_id
    end

    def officialdocument_params
      params.require(:officialdocument).permit(:description, :invoiceone, :invoicetwo, :balancesheet, :companyregistrationcertificate, :shareholdersagreement, :identificationdocumentshareholder, :extradoc)
    end

  end