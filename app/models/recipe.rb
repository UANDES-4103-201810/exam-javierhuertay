class Recipe < ApplicationRecord
  has_many :items
  has_many :ingredients, :through => :items
  validate :price

end
