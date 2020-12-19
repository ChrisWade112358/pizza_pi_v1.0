class Cart < ApplicationRecord
    has_many :line_items
    has_many :menu_items, through: :line_items
end
