class WebidsController < ApplicationController
    
    before_action :set_webid, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!
    before_action :is_authorised, only: [:update]
    
    def index
    end
    
    def show
    end
    
    def new
        @webid = current_user.webids.build
    end
    
    def edit
    end
    
    def create
        @webid = current_user.webids.build(webid_params)
        if @webid.save
            send_webid_email
            redirect_to pages_webid_instructions_path, notice: 'E-Mail erfolgreich gesendet'
        else
            flash[:notice] = "beim Speichern von Daten ist ein Fehler aufgetreten...."
            render :new
        end
    end
    
    def update
        @webid.application_type = 'webid'
        if @webid.update(webid_params)
            redirect_to pages_webid_instructions_path, notice: 'Ihre Daten wurden erfolgreich gespeichert.'
        else
            flash[:notice] = "Beim Speichern von Daten ist ein Fehler aufgetreten...."
        end
    end
    
    def destroy
        @webid.destroy
        redirect_to webids_url, notice: 'Ihre Daten wurden erfolgreich zerstört'
        head :no_content
    end

    def send_webid_email
        UserMailer.send_webid_email.deliver_now
        flash[:notice] = "WebID Email zum Kunden erfolgreich abgeschickt...."
    end
    
    private
    
    # Use callbacks to share common setup or constraints between actions.
    def set_webid
        @webid = Webid.find(params[:id])
    end
    
    def is_authorised
        redirect_to root_path, alert: "You don't have permission" unless current_user.id = @webid.user_id
    end
    
    def webid_params
        params.permit(:name, :email, :status, :link)
    end
end
