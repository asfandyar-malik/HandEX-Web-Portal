class UserMailer < ApplicationMailer
  default from: 'asfandyar@handex.co'

  def application_submit_email
    @user = params[:user]
    @insurance = params[:insurance]
    emails = ['asfandyarashrafmalik@gmail.com', 'hanoomalik420@gmail.com']
    mail(to: emails, subject: 'Welcome to HandEX')
  end

end