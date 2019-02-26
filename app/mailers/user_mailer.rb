class UserMailer < ApplicationMailer
  default from: 'asfandyar@handex.co'

  def application_submit_email
    @user = params[:user]
    @insurance = params[:insurance]
    emails = [@user.email, 'asfandyarashrafmalik@gmail.com', 'hanoomalik420@gmail.com', 'utkrist@handex.co']
    mail(to: emails, subject: 'Welcome to HandEX')
  end

end