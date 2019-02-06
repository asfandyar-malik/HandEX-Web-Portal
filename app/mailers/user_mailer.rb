class UserMailer < ApplicationMailer
  default from: 'asfandyar@handex.co'

  def application_submit_email
    @user = params[:user]
    @insurance = params[:insurance]
    mail(to: @user.email, subject: 'Welcome to HandEX')
  end

end