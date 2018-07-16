class BankaccountsController < ApplicationController

    before_action :set_bankaccount, except: [:index, :new, :create]
    before_action :authenticate_user!, except: [:show]
    before_action :is_authorised, only: [:exportinformation, :update]

    def index
      @bankaccount = current_user.bankaccount
    end

    # GET /bankaccounts/new
    def new
      @bankaccount = current_user.build_bankaccount()
    end

    # POST /bankaccounts
    # POST /bankaccounts.json
    def create
      @bankaccount = current_user.bankaccount.build(bankaccount_params)
      if @bankaccount.save
        redirect_to exportinformation_tradeinfo_path(@bankaccount), notice: "Created...."
      else
        flash[:alert] = "Something went wrong while creating...."
        render :new
      end
    end

    def eligibility
    end

    # GET /bankaccounts/1/edit
    def edit
    end

    def thank
      # something here if needed
    end

    # PATCH/PUT /bankaccounts/1
    # PATCH/PUT /bankaccounts/1.json
    def update
      if @bankaccount.update(bankaccount_params)
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
      redirect_to root_path, alert: "You don't have permission" unless current_user.id = @bankaccount.user_id
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
