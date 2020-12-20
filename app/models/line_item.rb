class LineItem < ApplicationRecord
    belongs_to :cart
    belongs_to :menu_item

    

    private

    def line_item_params
        params.require(:line_item).permit(
            :quantity,
            :menu_item_id,
            :cart_id,
            :line_item_subtotal
    
        )
    end

end
