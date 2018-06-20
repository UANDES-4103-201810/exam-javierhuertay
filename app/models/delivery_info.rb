class DeliveryInfo < ApplicationRecord
  belongs_to :customer
  validates :phone, format: { with: /\A\d+\z/, message: "Integer only. No sign allowed." }
  validate :address1
end
