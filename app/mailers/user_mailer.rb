class UserMailer < ApplicationMailer
    default from: 'HandEX GmbH <info@handex.co>'
    
    def application_submit_email
        @user = params[:user]
        @insurance = params[:insurance]
        emails = [@user.email]
        mail(to: emails, subject: 'Willkommen bei HandEX', bcc: ["Asfandyar <asfandyar@handex.co>", "Hamid <hamid@handex.co>"])
    end
    
    def invite_exporter_email
        @user = params[:user]
        @invite_exporter = params[:invite_exporter]
        emails = [@invite_exporter.exporter_email]
        mail(to: emails, subject: 'Willkommen bei HandEX', bcc: ["Asfandyar <asfandyar@handex.co>", "Hamid <hamid@handex.co>"])
    end
    
    def invite_importer_email
        @user = params[:user]
        @export_application = params[:export_application]
        emails = [@export_application.invitation_importer_email]
        mail(to: emails, subject: 'Welcome to HandEX', bcc: ["Asfandyar <asfandyar@handex.co>", "Hamid <hamid@handex.co>"])
    end
    
    def invite_importer_email_insurance
        @user = params[:user]
        @insurance = params[:insurance]
        emails = [@insurance.invitation_importer_email]
        mail(to: emails, subject: 'Welcome to HandEX', bcc: ["Asfandyar <asfandyar@handex.co>", "Hamid <hamid@handex.co>"])
    end
    
    def send_webid_email
        mail(to: ["Asfandyar <asfandyar@handex.co>"], subject: 'WebID Invitation', bcc: ["Asfandyar <asfandyar@handex.co>", "Hamid <hamid@handex.co>"] )
    end

end