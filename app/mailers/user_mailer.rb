class UserMailer < ApplicationMailer
  default from: 'info@handex.co'

  def application_submit_email
    @user = params[:user]
    @insurance = params[:insurance]
    emails = [@user.email]
    mail(to: emails, subject: 'Welcome to HandEX', bcc: ["Asfandyar <asfandyarashrafmalik@gmail.com>"])
  end

end