class UserMailer < ApplicationMailer
  default from: 'asfandyar@handex.co'

  def application_submit_email
    @user = params[:user]
    @insurance = params[:insurance]
    emails = [@user.email]
    mail(to: emails, subject: 'Welcome to HandEX', bcc: ["Asfandyar <asfandyarashrafmalik@gmail.com>", "Utkrist <utkrist@handex.co>"])
  end

end