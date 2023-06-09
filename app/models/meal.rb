class Meal < ApplicationRecord
    belongs_to :user
    has_many :meal_ingredients, dependent: :destroy
    has_many :ingredients, through: :meal_ingredients
end
