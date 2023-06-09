class CreateMeals < ActiveRecord::Migration[7.0]
  def change
    create_table :meals do |t|
      t.string :name
      t.float :total_protein
      t.float :total_carbs
      t.float :total_fat
      t.float :total_calories

      t.timestamps
    end
  end
end
