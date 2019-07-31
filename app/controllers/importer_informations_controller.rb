class ImporterInformationsController < ApplicationController
	
	before_action :set_importer_information, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!
	before_action :is_authorised, only: [:update]
	
	def index
		@new_applications    = filer_application_by_status "NEW"
	end
	
	def show
	end
	
	def new
		@importer_information = current_user.importer_informations.build
	end
	
	def edit
	end
	
	def create
		@importer_information = current_user.importer_informations.build(importer_information_params)
		@importer_information.application_type = 'importer_information'
		if params[:draft] == 'Save Draft'
			@importer_information.application_status = 'DRAFT'
			if @importer_information.save
				redirect_to "/importer_informations/" + @importer_information.id.to_s + "/edit", notice: 'Ihre Daten wurden erfolgreich aktualisiert (create).'
			else
				flash[:notice] = "beim Speichern von Daten ist ein Fehler aufgetreten...."
				render :new
			end
		else
			@importer_information.application_status = 'SUBMITTED'
			if @importer_information.save
				redirect_to pages_importer_information_saved_path, notice: 'Ihre Daten wurden erfolgreich versendet.'
			else
				flash[:notice] = "beim Speichern von Daten ist ein Fehler aufgetreten...."
				render :new
			end
		end
	end
	
	def update
		@importer_information.application_type = 'importer_information'
		if params[:draft] == 'Save Draft'
			@importer_information.application_status = 'DRAFT'
			if @importer_information.update(importer_information_params)
				redirect_to "/importer_informations/" + @importer_information.id.to_s + "/edit", notice: 'Ihre Daten wurden erfolgreich aktualisiert (update).'
			else
				flash[:notice] = "Beim Erstellen von Antrag ist ein Fehler aufgetreten...."
				render :update
			end
		elsif params[:draft_edit] == t('save')
			@importer_information.application_status = 'DRAFT'
			if @importer_information.update(importer_information_params)
				redirect_to "/importer_informations/" + @importer_information.id.to_s , notice: 'Ihre Daten wurden  erfolgreich aktualisiert.'
			else
				flash[:notice] = "beim Speichern von Daten ist ein Fehler aufgetreten...."
				show
			end
		else
			@importer_information.application_status = 'SUBMITTED'
			if @importer_information.update(importer_information_params)
				redirect_to pages_importer_information_saved_path, notice: 'Ihre Daten wurden erfolgreich gespeichert.'
			else
				flash[:notice] = "Beim Speichern von Daten ist ein Fehler aufgetreten...."
				render :update
			end
		end
	end
	
	def destroy
		@importer_information.destroy
		redirect_to importer_informations_url, notice: 'Ihre Daten wurden erfolgreich zerstört'
		head :no_content
	end
	
	def submitted_applications
		@submitted_applications = filer_application_by_status "SUBMITTED"
	end
	
	def draft_applications
		@draft_applications = filer_application_by_status "DRAFT"
	end
	
	def approved_applications
		@approved_applications = filer_application_by_status "APPROVED"
	end
	
	private
	
	def filer_application_by_status status
		current_user.importer_informations.where("application_status = ?", status)
	end
	
	# Use callbacks to share common setup or constraints between actions.
	def set_importer_information
		@importer_information = ImporterInformation.find(params[:id])
	end
	
	def is_authorised
		redirect_to root_path, alert: "You don't have permission" unless current_user.id = @importer_information.user_id
	end
	
	# Never trust parameters from the scary internet, only allow the white list through.
	def importer_information_params
		params
			.require(:importer_information)
			.permit(    )
	end
end
