class OnboardingsController < ApplicationController
    
    layout "onboarding", only: [:new, :edit, :index]
    before_action :set_onboarding, only: [:show, :edit, :update, :destroy]
    
    # GET /onboardings
    # GET /onboardings.json
    def index
        @onboardings = Onboarding.all
    end
    
    # GET /onboardings/1
    # GET /onboardings/1.json
    def show
    end
    
    # GET /onboardings/new
    def new
        @onboarding = Onboarding.new
    end
    
    # GET /onboardings/1/edit
    def edit
    end
    
    # POST /onboardings
    # POST /onboardings.json
    def create
        @onboarding = Onboarding.new(onboarding_params)
        
        respond_to do |format|
            if @onboarding.save
                format.html { redirect_to @onboarding, notice: 'Onboarding was successfully created.' }
                format.json { render :show, status: :created, location: @onboarding }
            else
                format.html { render :new }
                format.json { render json: @onboarding.errors, status: :unprocessable_entity }
            end
        end
    end
    
    # PATCH/PUT /onboardings/1
    # PATCH/PUT /onboardings/1.json
    def update
        respond_to do |format|
            if @onboarding.update(onboarding_params)
                format.html { redirect_to @onboarding, notice: 'Onboarding was successfully updated.' }
                format.json { render :show, status: :ok, location: @onboarding }
            else
                format.html { render :edit }
                format.json { render json: @onboarding.errors, status: :unprocessable_entity }
            end
        end
    end
    
    # DELETE /onboardings/1
    # DELETE /onboardings/1.json
    def destroy
        @onboarding.destroy
        respond_to do |format|
            format.html { redirect_to onboardings_url, notice: 'Onboarding was successfully destroyed.' }
            format.json { head :no_content }
        end
    end
    
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_onboarding
        @onboarding = Onboarding.find(params[:id])
    end
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def onboarding_params
        params
            .require(:onboarding)
            .permit(:company_name)
    end
end