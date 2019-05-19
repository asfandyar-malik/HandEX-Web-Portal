class ExportApplicationsController < ApplicationController
  before_action :set_export_application, only: [:show, :edit, :update, :destroy]


  def index
    @export_applications = ExportApplication.all
  end
  
  def show
  end
  
  def new
    @export_application = ExportApplication.new
  end

  def edit
  end
  
  def create
    @export_application = ExportApplication.new(export_application_params)

    respond_to do |format|
      if @export_application.save
        format.html { redirect_to @export_application, notice: 'Export application was successfully created.' }
        format.json { render :show, status: :created, location: @export_application }
      else
        format.html { render :new }
        format.json { render json: @export_application.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def update
    respond_to do |format|
      if @export_application.update(export_application_params)
        format.html { redirect_to @export_application, notice: 'Export application was successfully updated.' }
        format.json { render :show, status: :ok, location: @export_application }
      else
        format.html { render :edit }
        format.json { render json: @export_application.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @export_application.destroy
    respond_to do |format|
      format.html { redirect_to export_applications_url, notice: 'Export application was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_export_application
      @export_application = ExportApplication.find(params[:id])
    end

    def export_application_params
      params.fetch(:export_application, {})
    end
end
