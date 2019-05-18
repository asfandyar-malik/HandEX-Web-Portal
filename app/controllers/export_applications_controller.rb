class ExportApplicationsController < ApplicationController
  before_action :set_export_application, only: [:show, :edit, :update, :destroy]

  # GET /export_applications
  # GET /export_applications.json
  def index
    @export_applications = ExportApplication.all
  end

  # GET /export_applications/1
  # GET /export_applications/1.json
  def show
  end

  # GET /export_applications/new
  def new
    @export_application = ExportApplication.new
  end

  # GET /export_applications/1/edit
  def edit
  end

  # POST /export_applications
  # POST /export_applications.json
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

  # PATCH/PUT /export_applications/1
  # PATCH/PUT /export_applications/1.json
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

  # DELETE /export_applications/1
  # DELETE /export_applications/1.json
  def destroy
    @export_application.destroy
    respond_to do |format|
      format.html { redirect_to export_applications_url, notice: 'Export application was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_export_application
      @export_application = ExportApplication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def export_application_params
      params.fetch(:export_application, {})
    end
end
