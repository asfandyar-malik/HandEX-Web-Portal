class PrefillsController < ApplicationController
	
	before_action :set_prefill, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!
	before_action :is_authorised, only: [:update]
	
	def index
	end
	
	def show
	end
	
	def new
		@prefill = current_user.prefills.build
	end
	
	def edit
	end
	
	def create
		@prefill = current_user.prefills.build(prefill_params)
		if @prefill.save
			redirect_to pages_document_prefill_saved_path, notice: 'Ihre Daten wurden erfolgreich versendet.'
		else flash[:notice] = "beim Speichern von Daten ist ein Fehler aufgetreten...."
		render :new
		end
	end
	
	def update
		if @prefill.update(prefill_params)
			redirect_to pages_document_prefill_saved_path, notice: 'Ihre Daten wurden erfolgreich gespeichert.'
		else flash[:notice] = "Beim Speichern von Daten ist ein Fehler aufgetreten...."
			render :update
		end
	end
	
	def destroy
		@prefill.destroy
		redirect_to prefills_url, notice: 'Ihre Daten wurden erfolgreich zerstört'
		head :no_content
	end
	
	private
	
	# Use callbacks to share common setup or constraints between actions.
	def set_prefill
		@prefill = Prefill.find(params[:id])
	end
	
	def is_authorised
		redirect_to root_path, alert: "You don't have permission" unless current_user.id = @prefill.user_id
	end
	
	# Never trust parameters from the scary internet, only allow the white list through.
	def prefill_params
		params.permit(:supply_contract, :document_one, :document_two, :document_three, :document_four, :document_five)
	end
end
