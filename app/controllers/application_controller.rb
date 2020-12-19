class ApplicationController < ActionController::Base
    
    def current_cart
        if user_signed_in?
          if Cart.find_by(user_id: current_user.id) == nil
            @current_cart = Cart.create(
                user_id: current_user.id
            )
            @current_cart.save
          else 
            @current_cart = Cart.find_by(user_id: current_user.id)
          end
        else
          id = SecureRandom.hex(8)
          @current_cart = Cart.create(session_id: id)
        end
      end
    
    
end
