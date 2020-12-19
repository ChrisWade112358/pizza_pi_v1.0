class Ingredient < ApplicationRecord
    has_many :menu_ingredient_joins
    has_many :menu_items, through: :menu_ingredient_joins
end
