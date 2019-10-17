class RegistrationsController < Devise::RegistrationsController

    def after_inactive_sign_up_path_for(resource)
        new_user_confirmation_path(session[:params])
    end

    protected

    def update_resource(resource, params)
        resource.update_with_password(params)
    end
end