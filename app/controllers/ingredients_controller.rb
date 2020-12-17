class IngredientsController < ApplicationController
    def index
        @ingredients = Ingredient.all
    end

    def show
        @ingredient = Ingredient.find(params[:id])
    end

    def new
        @ingredient = Ingredient.new
    end

    def create
        @ingredient = Ingredient.new(ingredient_params)
        if @ingredient.save?
            redirect to ingredient_path(@ingredient), notice: "Ingredient was successfully created."
        else
            render 'new'
        end
    end

    def edit
        @ingredient = Ingredient.find(params[:id])
    end

    def update
        @ingredient = Ingredient.find(params[:id])
        if @ingredient.update(ingredient_params)
            redirect_to ingredient_path(@ingredient), notice: "Ingredient was successfully edited." 
        else
            render "edit"
        end
    end

    def destroy
        Ingredient.find(params[:id]).destroy
        redirect_to menu_items_path
    end

end
