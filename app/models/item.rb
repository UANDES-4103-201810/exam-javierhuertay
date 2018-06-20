class Item < ApplicationRecord
  belongs_to :recipe
  belongs_to :ingredient
  validate :recipe_id
  validate :ingredient_id
end
