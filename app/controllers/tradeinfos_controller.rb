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
            redirect_to exportinformation_tradeinfo_path(@tradeinfo), notice: "Saved...."
        else
            flash[:alert] = "Something went wrong...."
            render :new
        end
    end

    def exportinformation
    end

    # GET /tradeinfos/1/edit
    def edit
    end

    def thank
        # something here if needed
    end

    # PATCH/PUT /tradeinfos/1
    # PATCH/PUT /tradeinfos/1.json
    def update
        if @tradeinfo.update(tradeinfo_params)
            flash[:notice] = "Saved ...."
            redirect_to thank_tradeinfo_path
        else
            flash[:alert] = "Something went wrong"
        end
    end

    # DELETE /tradeinfos/1
    # DELETE /tradeinfos/1.json
    def destroy
        @tradeinfo.destroy
        respond_to do |format|
            format.html {redirect_to tradeinfos_url, notice: 'Tradeinfo was successfully destroyed.'}
            format.json {head :no_content}
        end
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_tradeinfo
        @tradeinfo = Tradeinfo.find(params[:id])
    end

    def is_authorised
        redirect_to root_path, alert: "You don't have permission" unless current_user.id = @tradeinfo.user_id
    end

    def tradeinfo_params
        params.require(:tradeinfo).permit(:goods, :category, :companyName, :companyEmail, :companyPhone, :importerName, :importerEmail, :taxId)
        # :exportinformation, :category, :companyName
        # params.fetch(:tradeinfo, {})
    end

end
