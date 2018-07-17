class BuyersController < ApplicationController

  before_action :set_buyer, except: [:index, :new, :create]
  before_action :authenticate_user!, except: [:show]
  before_action :is_authorised, only: [:exportinformation, :update]

  def new
    flash[:alert] = "Entering Buyers new"
    @tradeinfo = Tradeinfo.find(params[:tradeinfo_id])
    @buyer = @tradeinfo.create_buyer(buyer_params)
  end

  def create
    flash[:alert] = "Entering Buyers create"
    @tradeinfo = Tradeinfo.find(params[:tradeinfo_id])
    @tradeinfo.create_buyer(buyer_params)
    @buyer = @tradeinfo.buyer

    if @buyer.save
      redirect_to new_tradeinfo_financial_path(@tradeinfo), notice: "Buyer Created...."
    else
      flash[:alert] = "Something went wrong while creating...."
      render :new
    end
  end


  def update
    if @buyer.update(buyer_params)
      flash[:notice] = "Buyers Updated...."
      if is_ready_second_step
        redirect_to new_tradeinfo_financial_path(@tradeinfo)
      else
        redirect_to thank_tradeinfo_path(@tradeinfo)
      end
    else
      flash[:alert] = "Something went wrong while updating"
    end
  end

  def destroy
    @buyer.destroy
    respond_to do |format|
      format.html { redirect_to buyer_url, notice: 'buyer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_buyer
    @buyer = buyer.find(params[:id])
  end

  def is_authorised
    redirect_to root_path, alert: "You don't have permission" unless current_tradeinfo.id = @buyer.tradeinfo_id
  end

  def buyer_params
    params.permit(:name, :country, :street_address, :payment_terms, :shipment_terms,
                                  :sales_past_12months, :sales_projected_12months, :credit_period, :credit_from,
                                  :years_selling_buyer, :invoicing_currency, :document_routing, :document_release,
                                  :related_party, :write_offs)
  end

  def is_ready_first_step
    @buyer.name && @buyer.country
  end

  def is_ready_second_step
    @buyer.name && @buyer.country && @buyer.street_address && @buyer.street_address && @buyer.street_address
  end

end
