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

   


    
end
