class CreatePizzaOders < ActiveRecord::Migration[5.1]
  def change
    create_table :pizza_oders do |t|
      t.integer :order_id
      t.integer :pizza_id

      t.timestamps
    end
  end
end
