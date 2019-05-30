class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  before_action :set_locale
  
  def after_sign_in_path_for(resource)
    root_path
  end

  def after_sign_out_path_for(resource_or_scope)
      root_path
  end

  def set_locale
      I18n.locale = params[:locale] || I18n.default_locale
  end
  
  def default_url_options(options={})
      { locale: I18n.locale }
  end
  
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:company_name, :phone_number, :description, :is_broker, :firstname, :lastname])
    devise_parameter_sanitizer.permit(:account_update, keys: [:company_name, :phone_number, :description, :is_broker, :firstname, :lastname ])
  end

end
