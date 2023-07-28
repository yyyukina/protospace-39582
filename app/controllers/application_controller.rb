class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    before_action :configure_permitted_parameters, if: :devise_controller?

    skip_before_action :authenticate_user!, only: [:index, :show]

    private
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile, :occupation, :position])
    end
end
