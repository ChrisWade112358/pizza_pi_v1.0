class LineItemsController < ApplicationController
    
    def create
        current_cart.add_item(
            menu_item_id: params[:menu_item_id]
            quantity: params[:quantity]
        )
        redirect_to menu_path
    end

end
