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
      redirect_to pages_applicationProcessing_path(@import), notice: 'Antrag wurde erfolgreich erstellt.'
    else
      flash[:notice] = "Beim Erstellen von Antrag ist ein Fehler aufgetreten...."
      render :new
    end
  end
  
  def update
    if @import.update(import_params)
      redirect_to pages_applicationProcessing_path(@import), notice: 'Antrag wurde erfolgreich aktualisiert.'
    else
      flash[:notice] = "Beim Erstellen von Antrag ist ein Fehler aufgetreten...."
    end
  end
  
  def destroy
    @import.destroy
    respond_to do |format|
      format.html {redirect_to imports_url, notice: 'Antrag wurde erfolgreich zerstört'}
      format.json {head :no_content}
    end
  end
  
  # def submitted_applications
  #   @submitted_applications = filer_application_by_status "submitted"
  # end
  #
  # def approved_applications
  #   @approved_applications = filer_application_by_status "approved"
  # end
  #
  # def user_summary
  #   render "imports/summary/user_summary"
  # end
  #
  # def pdf_user_summary
  #   configure_html_to_pdf output_file_name: 'imports/summary/pdf_generated_user_summary.html.erb',
  #                         layout:           'application_pdf.html.erb',
  #                         view:             'imports/summary/pdf_user_summary.html.erb'
  # end
  
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
