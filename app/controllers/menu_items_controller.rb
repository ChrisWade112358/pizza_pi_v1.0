class MenuItemsController < ApplicationController
    def index
        @menu_items = Menu_Item.all
    end
end
