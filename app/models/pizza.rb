class Pizza < ApplicationRecord
  has_many :pizza_orders
  has_many :orders, :through => :pizza_orders
  belongs_to :recipe
  belongs_to :crust
  validate :crust_id
  validate :recipe_id
end
