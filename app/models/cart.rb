class Cart < ApplicationRecord
    has_many :line_items
    has_many :menu_items, through: :line_items
    belongs_to :user

    

    


    private

    def cart_params
        params.require(:cart).permit(
            :total, 
            :tax,
            :tax_rate, 
            :delivery, 
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

    def total_tax
        self[:tax] = subtotal * tax_rate


    
end
