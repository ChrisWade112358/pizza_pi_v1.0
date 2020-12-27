class Order < ApplicationRecord
    has_many :line_items
    belongs_to :cart
    has_many :menu_items, through: :line_items
end
