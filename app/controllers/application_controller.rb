class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  before_action :set_locale
  
  def after_sign_in_path_for(resource)
    if current_user.user_type == 1
      new_importer_information_path
      # I18n.locale #=> :en
    else
      root_path
    end
  end

  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path
  end

  def set_locale
      I18n.locale = params[:locale] || I18n.default_locale
  end
  
  def default_url_options(options={})
      { locale: I18n.locale }
  end
  
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:company_name, :phone_number, :description, :user_type, :firstname, :lastname])
    devise_parameter_sanitizer.permit(:account_update, keys: [:company_name, :phone_number, :description, :user_type, :firstname, :lastname ])
  end

end
