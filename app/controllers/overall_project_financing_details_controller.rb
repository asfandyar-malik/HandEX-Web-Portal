class OverallProjectFinancingDetailsController < ApplicationController
  before_action :set_overall_project_financing_detail, only: [:show, :edit, :update, :destroy]

  # GET /overall_project_financing_details
  # GET /overall_project_financing_details.json
  def index
    @overall_project_financing_details = OverallProjectFinancingDetail.all
  end

  # GET /overall_project_financing_details/1
  # GET /overall_project_financing_details/1.json
  def show
  end

  # GET /overall_project_financing_details/new
  def new
    @overall_project_financing_detail = OverallProjectFinancingDetail.new
  end

  # GET /overall_project_financing_details/1/edit
  def edit
  end

  # POST /overall_project_financing_details
  # POST /overall_project_financing_details.json
  def create
    @overall_project_financing_detail = OverallProjectFinancingDetail.new(overall_project_financing_detail_params)

    respond_to do |format|
      if @overall_project_financing_detail.save
        format.html { redirect_to @overall_project_financing_detail, notice: 'Overall project financing detail was successfully created.' }
        format.json { render :show, status: :created, location: @overall_project_financing_detail }
      else
        format.html { render :new }
        format.json { render json: @overall_project_financing_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /overall_project_financing_details/1
  # PATCH/PUT /overall_project_financing_details/1.json
  def update
    respond_to do |format|
      if @overall_project_financing_detail.update(overall_project_financing_detail_params)
        format.html { redirect_to @overall_project_financing_detail, notice: 'Overall project financing detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @overall_project_financing_detail }
      else
        format.html { render :edit }
        format.json { render json: @overall_project_financing_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /overall_project_financing_details/1
  # DELETE /overall_project_financing_details/1.json
  def destroy
    @overall_project_financing_detail.destroy
    respond_to do |format|
      format.html { redirect_to overall_project_financing_details_url, notice: 'Overall project financing detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_overall_project_financing_detail
      @overall_project_financing_detail = OverallProjectFinancingDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def overall_project_financing_detail_params
      params.require(:overall_project_financing_detail).permit(:subject, :currency, :amount)
    end
end
