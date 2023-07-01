# frozen_string_literal: true

json.array! @food_recipes, partial: 'food_recipes/food_recipe', as: :food_recipe
