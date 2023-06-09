class IngredientsController < ApplicationController
    def index
        @ingredients = Ingredient.all
        render json: @ingredients
    end

    def show
        @ingredient = Ingredient.find(params[:id])
        render json: @ingredient
    end

    def create
        @ingredient = Ingredient.new(ingredient_params)

        if @ingredient.save
            render json: @ingredient, status: :created, location: @ingredient
        else
            render status: :unprocessable_entity
        end
    end

    def update
        @ingredient = Ingredient.find(params[:id])

        if @ingredient.update(ingredient_params)
            render json: @ingredient, status: :ok, location: @ingredient
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        # ingredient_ids = params[:ingredient_ids]
        # puts ingredient_ids
        # Ingredient.destroy(ingredient_ids)
        @ingredient = Ingredient.find(params[:id])
        @ingredient.destroy
        render json: @ingredient, status: :ok, location: @ingredient
    end

    private

    def ingredient_params
        params.require(:ingredient).permit(:name, :protein, :carbs, :fat, :calories)
    end

end
