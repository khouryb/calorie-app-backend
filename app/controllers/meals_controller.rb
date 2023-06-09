class MealsController < ApplicationController
    def index
        @meals = Meal.all
        render json: @meals
    end

    def show
        @meal = Meal.find(params[:id])
        render json: @meal
    end

    def create
        @meal = Meal.new(meal_params)
        @meal.user = current_user

        params[:ingredient_ids].each do |id|
            ingredient = Ingredient.find(id)
            @meal.ingredients << ingredient
        end

        if @meal.save
            render json: @meal, status: :created, location: @meal
        else
            render json: { errors: @meal.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def update
        @meal = Meal.find(params[:id])

        if @meal.update(meal_params)
            render json: @meal, status: :ok, location: @meal
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @meal = Meal.find(params[:id])
        @meal.destroy

        render json: @meal, status: :ok, location: @meal
    end

    private

    def meal_params
        params.require(:meal).permit(:name, :total_protein, :total_carbs, :total_fat, :total_calories, :ingredient_ids)
    end
end