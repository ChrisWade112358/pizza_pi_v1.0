class MenuItem < ApplicationRecord
    has_many :line_items
    has_many :oders, through: :line_items
    

    CATEGORY = ['Pizza', 'Side', 'Drink', 'Dessert', 'Wings']
end
