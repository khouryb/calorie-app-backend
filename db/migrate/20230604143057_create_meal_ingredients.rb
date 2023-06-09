class CreateMealIngredients < ActiveRecord::Migration[7.0]
  def change
    create_table :meal_ingredients do |t|

      t.timestamps
    end
  end
end
