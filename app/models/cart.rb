class Cart < ApplicationRecord
    has_many :orders
    has_many :line_items, through: :orders
    belongs_to :user

    

    


    private

    def cart_params
        params.require(:cart).permit(
           
            :session_id, 
            :user_id, 
           
            
        )
    end

    def total_tax
        self[:tax] = subtotal * tax_rate


    
end
