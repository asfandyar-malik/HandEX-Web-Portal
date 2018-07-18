class BankaccountsController < ApplicationController

  before_action :set_bankaccount, except: [:index, :new, :create]
  before_action :authenticate_user!, except: [:show]
  before_action :is_authorised, only: [:exportinformation, :update]

  # GET /bankaccounts/new
  def new
    flash[:alert] = "Entering BankAccount new"
    @tradeinfo = Tradeinfo.find(params[:tradeinfo_id])
    @bankaccount = @tradeinfo.build_bankaccount
  end

  # POST /bankaccounts
  # POST /bankaccounts.json
  def create
    flash[:alert] = "Entering BankAccount create"
    @tradeinfo = Tradeinfo.find(params[:tradeinfo_id])
    @bankaccount = @tradeinfo.build_bankaccount(bankaccount_params)

    if @bankaccount.save
      redirect_to sucessfullyprocessed_tradeinfo_path(@tradeinfo), notice: "Created...."
    else
      flash[:alert] = "Something went wrong while creating...."
      render :new
    end
  end


  # PATCH/PUT /bankaccounts/1
  # PATCH/PUT /bankaccounts/1.json
  def update
    if @bankaccount.update(bankaccount_params)
      flash[:notice] = "Updated...."
      redirect_to sucessfullyprocessed_tradeinfo_path
    else
      flash[:alert] = "Something went wrong while updating"
    end
  end

  # DELETE /bankaccounts/1
  # DELETE /bankaccounts/1.json
  def destroy
    @bankaccount.destroy
    respond_to do |format|
      format.html { redirect_to bankaccounts_url, notice: 'bankaccount was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_bankaccount
    @bankaccount = bankaccount.find(params[:id])
  end

  def is_authorised
    redirect_to root_path, alert: "You don't have permission" unless current_tradeinfo.id = @bankaccount.tradeinfo_id
  end

  def bankaccount_params
    params.require(:bankaccount).permit(:name_account_holder, :iban, :bic)
  end

  def is_ready_first_step
    @bankaccount.name_account_holder && @bankaccount.name_account_holder
  end

  def is_ready_second_step
    @bankaccount.name_account_holder && @bankaccount.name_account_holder && @bankaccount.name_account_holder
  end

end
