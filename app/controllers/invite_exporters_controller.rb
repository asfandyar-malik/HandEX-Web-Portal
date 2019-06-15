class InviteExportersController < ApplicationController
    
    before_action :set_invite_exporter, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!
    before_action :is_authorised, only: [:update]
    
    def index
        # @invite_exporters = InviteExporter.all
    end
    
    def show
    end
    
    def new
        @invite_exporter = current_user.invite_exporters.build
    end
    
    def edit
    end
    
    def create
        @invite_exporter = current_user.invite_exporters.build(invite_exporter_params)
        @invite_exporter.application_status = 'INVITED'
        if @invite_exporter.save
            UserMailer.with(user: current_user, invite_exporter: @invite_exporter).invite_exporter_email.deliver_now
            redirect_to pages_contacted_exporter_path, notice: 'Antrag wurde erfolgreich erstellt.'
        else
            flash[:notice] = "Beim Erstellen von Antrag ist ein Fehler aufgetreten...."
            render :new
        end
    end
    
    def update
        @invite_exporter.application_status = 'INVITED'
        if @invite_exporter.update(invite_exporter_params)
            redirect_to pages_contacted_exporter_path, notice: 'Antrag wurde erfolgreich aktualisiert.'
        else
            flash[:notice] = "Beim Erstellen von Antrag ist ein Fehler aufgetreten...."
        end
    end
    
    def destroy
        @invite_exporter.destroy
        redirect_to invite_exporters_url, notice: 'Invite exporter was successfully destroyed.'
        head :no_content
    end

    def invitation_customer_sent
        @invited_applications = filer_application_by_status "INVITED"
    end
    
    private

    def filer_application_by_status status
        current_user.export_applications.where("application_status = ?", status)
    end

    def set_invite_exporter
        @invite_exporter = InviteExporter.find(params[:id])
    end
    
    def is_authorised
        redirect_to root_path, alert: "You don't have permission" unless current_user.id = @invite_exporter.user_id
    end
    
    def invite_exporter_params
        params.require(:invite_exporter).permit(:exporter_name, :exporter_broker_id, :exporter_email, :exporter_telephone, :exporter_representative_name)
    end
end
