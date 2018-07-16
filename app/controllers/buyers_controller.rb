class BuyersController < ApplicationController

  before_action :set_buyer, except: [:index, :new, :create]
  before_action :authenticate_user!, except: [:show]
  before_action :is_authorised, only: [:exportinformation, :update]

  def index
    @buyer = current_user.buyer
  end

  def new
    @buyer = current_user.build_buyer()
    # @user = User.find(params[:user_id])
  end

  def create
    current_user.create_buyer(params[:buyer])

    # @buyer = current_user.build_buyer(buyer_params)
    if @buyer.save
      redirect_to buyer_index_path(@buyer), notice: "Created...."
    else
      flash[:alert] = "Something went wrong while creating...."
      render :new
    end
  end

  def edit
  end


  def update
    if @buyer.update(buyer_params)
      flash[:notice] = "Updated...."
      if is_ready_third_step
        redirect_to buyer_index_path
      else
        redirect_to buyer_update_path
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
    redirect_to root_path, alert: "You don't have permission" unless current_user.id = @buyer.user_id
  end

  def buyer_params
    params.require(:buyer).permit(:name, :country, :street_address, :payment_terms, :shipment_terms,
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
