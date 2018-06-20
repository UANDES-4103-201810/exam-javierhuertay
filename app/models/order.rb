class Order < ApplicationRecord
  has_many :pizza_oders
  has_many :pizzas, :through => :pizza_oders
  belongs_to :customer
  validate :customer_id
end
