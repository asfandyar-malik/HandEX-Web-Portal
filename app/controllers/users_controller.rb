class UsersController < ApplicationController
    
    before_action :set_user
    
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
        @all_applications = current_user.insurances
    end
    
    private
    
    def filter_insurance status
        @user.insurances.where("application_status = ?", status)
    end

    def filter_export_application status
        @user.export_applications.where("application_status = ?", status)
    end
    
    def set_user
        @user = User.find(params[:id])
    end

end