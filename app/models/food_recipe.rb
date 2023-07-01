# frozen_string_literal: true

class FoodRecipe < ApplicationRecord
  belongs_to :recipe
  belongs_to :food
end
