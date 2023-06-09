class AddIngredientRefToMealIngredients < ActiveRecord::Migration[7.0]
  def change
    add_reference :meal_ingredients, :ingredient, null: false, foreign_key: true
  end
end
