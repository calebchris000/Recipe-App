# frozen_string_literal: true

class Recipe < ApplicationRecord
  attr_accessor :public

  before_save :set_public

  belongs_to :user, foreign_key: :user_id
  has_many :food_recipes, dependent: :destroy
  has_many :food_recipes
  # Validations
  validates :name, presence: true
  validates :preparation_time, presence: true
  validates :description, presence: true
  validates :public, presence: true

  private

  def set_public
    self.public ||= false
  end
end
