class UsersController < ApplicationController
    
    # before_action :set_user
    before_action :authenticate_user!
    before_action :is_authorised, only: [:update]
    
    def show
    end
    
    def submitted_applications
        @submitted_insurance = filter_insurance "SUBMITTED"
        @submitted_export_applications = filter_export_application "SUBMITTED"
        @submitted_applications = @submitted_insurance + @submitted_export_applications
    end
    
    def draft_applications
        @draft_insurance = filter_insurance "DRAFT"
        @draft_export_applications = filter_export_application "DRAFT"
        @draft_applications = @draft_insurance + @draft_export_applications
    end
    
    def approved_applications
        @approved_insurance = filter_insurance "APPROVED"
        @approved_export_applications = filter_export_application "APPROVED"
        @approved_applications = @approved_insurance + @approved_export_applications
    end
    
    def all_applications
        @all_insurance = current_user.insurances
        @all_export_application = current_user.export_applications
        @invited_exporters = current_user.invite_exporters
        @all_applications = @all_export_application + @all_insurance
    end

    def invited_exporter
        @invited_exporters = filter_invite_exporter "INVITED"
    end
    
    private
    
    def filter_insurance status
        current_user.insurances.where("application_status = ?", status)
    end

    def filter_export_application status
        current_user.export_applications.where("application_status = ?", status)
    end

    def filter_invite_exporter status
        current_user.invite_exporters.where("application_status = ?", status)
    end
    
    # def set_user
    #     current_user = User.find(params[:id])
    # end

end