class MenuItem < ApplicationRecord
    has_many :line_items
    has_many :carts, through: :line_items
    has_many :menu_ingredient_joins
    has_many :ingredients, through: :menu_ingredient_joins

    CATEGORY = ['Pizza', 'Side', 'Drink', 'Dessert', 'Wings']
end
