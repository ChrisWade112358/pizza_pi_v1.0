class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    def set_user
        @user = current_user
    end

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :first_name, :last_name, :address, :city, :state, :zip, :phone_number, :employee, :manager])
        devise_parameter_sanitizer.permit(:account_update, keys: [:email, :first_name, :last_name, :address, :city, :state, :zip, :phone_number, :employee, :manager])
    end
end
