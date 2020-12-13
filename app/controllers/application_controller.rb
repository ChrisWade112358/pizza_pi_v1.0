class ApplicationController < ActionController::Base
    def set_user
        @user = current_user
    end

    protected

    def configure_permitted_perameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :addres, :city, :state, :zip, :phone_number, :employee, :manager])
end
