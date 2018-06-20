class PizzaOder < ApplicationRecord
  belongs_to :pizza
  belongs_to :order
  validate :pizza_id
  validate :order_id

end
