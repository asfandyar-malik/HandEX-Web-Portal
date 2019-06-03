class RefinancesController < ApplicationController
  before_action :set_refinance, only: [:show, :edit, :update, :destroy]

  # GET /refinances
  # GET /refinances.json
  def index
    @refinances = Refinance.all
  end

  # GET /refinances/1
  # GET /refinances/1.json
  def show
  end

  # GET /refinances/new
  def new
    @refinance = Refinance.new
  end

  # GET /refinances/1/edit
  def edit
  end

  # POST /refinances
  # POST /refinances.json
  def create
    @refinance = Refinance.new(refinance_params)

    respond_to do |format|
      if @refinance.save
        format.html { redirect_to @refinance, notice: 'Refinance was successfully created.' }
        format.json { render :show, status: :created, location: @refinance }
      else
        format.html { render :new }
        format.json { render json: @refinance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /refinances/1
  # PATCH/PUT /refinances/1.json
  def update
    respond_to do |format|
      if @refinance.update(refinance_params)
        format.html { redirect_to @refinance, notice: 'Refinance was successfully updated.' }
        format.json { render :show, status: :ok, location: @refinance }
      else
        format.html { render :edit }
        format.json { render json: @refinance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /refinances/1
  # DELETE /refinances/1.json
  def destroy
    @refinance.destroy
    respond_to do |format|
      format.html { redirect_to refinances_url, notice: 'Refinance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_refinance
      @refinance = Refinance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def refinance_params
      params.fetch(:refinance, {})
    end
end
