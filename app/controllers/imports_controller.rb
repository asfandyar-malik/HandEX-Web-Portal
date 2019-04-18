class ImportsController < ApplicationController
  include Html2pdfconverter
  
  layout "import", only: [:new, :edit]
  
  before_action :set_import, only: [:show, :edit, :update, :destroy, :user_summary, :user_summary_pdf, :pdf_user_summary]
  before_action :authenticate_user!
  before_action :is_authorised, only: [:update]
  
  def index
    @new_applications = filer_application_by_status "new"
  end
  
  def show
  end
  
  def new
    @import = current_user.imports.build
  end
  
  def edit
  end
  
  def create
    @import                    = current_user.imports.build(import_params)
    # @import.application_status = "submitted"
    if @import.save
      # UserMailer.with(user: current_user, import: @import).application_submit_email.deliver_now
      redirect_to pages_submitted_path, notice: 'Antrag wurde erfolgreich erstellt.'
    else
      flash[:notice] = "Beim Erstellen von Antrag ist ein Fehler aufgetreten...."
      render :new
    end
  end
  
  def update
    if @import.update(import_params)
      redirect_to pages_submitted_path, notice: 'Antrag wurde erfolgreich aktualisiert.'
    else
      flash[:notice] = "Beim Erstellen von Antrag ist ein Fehler aufgetreten...."
    end
  end
  
  def destroy
    @import.destroywhen_security_received
    respond_to do |format|
      format.html {redirect_to imports_url, notice: 'Antrag wurde erfolgreich zerstört'}
      format.json {head :no_content}
    end
  end
  
  private
  
  def filer_application_by_status status
    current_user.imports.where("application_status = ?", status)
  end
  
  # Use callbacks to share common setup or constraints between actions.
  def set_import
    @import = import.find(params[:id])
  end
  
  def is_authorised
    redirect_to root_path, alert: "You don't have permission" unless current_user.id = @import.user_id
  end
  
  def import_params
    params.require(:import).permit(
        :description, :country, :company)
  end
end
