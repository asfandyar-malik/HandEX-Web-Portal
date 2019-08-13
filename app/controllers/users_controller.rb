class UsersController < ApplicationController
    
    # before_action :set_user
    before_action :authenticate_user!
    before_action :is_authorised, only: [:update]
    
    def show
    end
    
    def submitted_applications
        @submitted_insurances = filter_insurance "SUBMITTED"
        @submitted_export_applications = filter_export_application "SUBMITTED"
        @submitted_importer_informations = filter_importer_information "SUBMITTED"
        @submitted_applications = @submitted_insurances + @submitted_export_applications + @submitted_importer_informations
    end
    
    def draft_applications
        @draft_insurances = filter_insurance "DRAFT"
        @draft_export_applications = filter_export_application "DRAFT"
        @draft_importer_informations = filter_importer_information "DRAFT"
        @draft_applications = @draft_insurances + @draft_export_applications + @draft_importer_informations
    end
    
    def approved_applications
        @approved_insurances = filter_insurance "APPROVED"
        @approved_export_applications = filter_export_application "APPROVED"
        @approved_importer_informations = filter_importer_information "APPROVED"
        @approved_applications = @approved_insurances + @approved_export_applications + @approved_importer_informations
    end
    
    def all_applications
        @all_insurances = current_user.insurances
        @all_export_applications = current_user.export_applications
        @all_importer_informations = current_user.importer_informations
        @invited_exporters = current_user.invite_exporters
        @all_applications = @all_export_applications + @all_insurances + @all_importer_informations
    end

    def invited_exporters
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

    def filter_importer_information status
        current_user.importer_informations.where("application_status = ?", status)
    end
    
    # def set_user
    #     current_user = User.find(params[:id])
    # end

end