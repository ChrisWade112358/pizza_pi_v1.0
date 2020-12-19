class Cart < ApplicationRecord
    has_many :line_items
    has_many :menu_items, through: :line_items
    belongs_to :session
    belongs_to :user

    

    def create
        
        if current_user?
            @cart = Cart.find_by(current_user.id)
        else
            @cart = Cart.create_by(session_id: session.id)
        end
    end


    private

    

    
end
