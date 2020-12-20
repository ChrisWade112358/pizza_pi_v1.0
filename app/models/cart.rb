class Cart < ApplicationRecord
    has_many :line_items
    has_many :menu_items, through: :line_items
    belongs_to :user

    def add_item()

    


    private

    def cart_params
        params.require(:cart).permit(
            :delivery, 
            :total, 
            :tax, 
            :delivery_fee, 
            :subtotal, 
            :session_id, 
            :user_id, 
            :first_name, 
            :last_name, 
            :address, 
            :city, 
            :zip, 
            :phone_number
        )
    end


    
end
