class CreateCartItems < ActiveRecord::Migration[5.1]
  def change
    create_table :cart_items do |t|
      t.string :pizza_id
      t.string :cart_id

      t.timestamps
    end
  end
end
