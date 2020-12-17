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
        if @ingredient.save
            redirect_to ingredients_path(@ingredient), notice: "Ingredient was successfully created."
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
            redirect_to ingredients_path(@ingredient), notice: "Ingredient was successfully edited." 
        else
            render "edit"
        end
    end

    def destroy
        Ingredient.find(params[:id]).destroy
        redirect_to ingredients_path
    end


    private

    def ingredient_params
        params.require(:ingredient).permit(:name, :description, :cost, :intake, :amount_in_stock, :amount_used, :expiration, :in_use, :unit_of_measurement)
    end


end
