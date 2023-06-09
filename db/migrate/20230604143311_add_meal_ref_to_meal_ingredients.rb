class AddMealRefToMealIngredients < ActiveRecord::Migration[7.0]
  def change
    add_reference :meal_ingredients, :meal, null: false, foreign_key: true
  end
end
