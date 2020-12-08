class ApplicationController < ActionController::Base
    def set_user
        @user = current_user
    end
end
