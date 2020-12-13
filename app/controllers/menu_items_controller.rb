class MenuItemsController < ApplicationController
    def index
        @menu_items = MenuItem.all
    end

    def show
        @menu_item = MenuItem.find(params[:id])
    end

    def new
        @menu_item = MenuItem.new
    end

    def create
        
        @menu_item = MenuItem.new(menu_item_params)
        if @menu_item.save
            redirect_to menu_item_path(@menu_item), notice: "Menu Item was successfully created."
        else
            render 'new'
        end
    end


end
