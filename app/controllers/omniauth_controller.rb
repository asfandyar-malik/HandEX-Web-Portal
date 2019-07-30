class OmniauthController < ApplicationController
	def localized
		# Just save the current locale in the session and redirect to the unscoped path as before
		session[:omniauth_login_locale] = I18n.locale
		omniauth_authorize_path = if params[:provider] == 'twitter'
			                          user_twitter_omniauth_authorize_path
			                      elsif params[:provider] == 'facebook'
				                      user_facebook_omniauth_authorize_path
			                      else
				                      new_user_session_path
		                          end
		redirect_to omniauth_authorize_path
	end
end