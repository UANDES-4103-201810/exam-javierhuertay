class Cart < ApplicationRecord
  has_many :cart_items
  def add_product(pizza_params)
    current_item = cart.items.find_by(pizza_id: pizza_params[:pizza][:pizza_id])

    if current_item
      current_item.quantity += pizza_params[:pizza][:quantity].to_i
      current_item.save
    else
      new_item = cart_items.create(pizza_id: pizza_params[:pizza][:pizza_id], quantity: pizza_params[:pizza][:quantity], cart_id: self.id)
    end
    new_item
  end
end
