class CreateIngredients < ActiveRecord::Migration[7.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.float :protein
      t.float :carbs
      t.float :fat
      t.integer :calories

      t.timestamps
    end
  end
end
