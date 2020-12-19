class LineItemsController < ApplicationController
    
    def create
        current_cart.add_item(
            cart_id: params[:current_cart.id]
            menu_item_id: params[:menu_item_id]
            quantity: params[:quantity]
        )
        redirect_to menu_path
    end

end
