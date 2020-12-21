class LineItem < ApplicationRecord
    belongs_to :cart
    belongs_to :menu_item

    before_save :set_total

    
    def total
        menu_item.price * quantity
    end


    private

    def set_total
        self[:line_item_subtotal] = total * quantity
    end
    

end
