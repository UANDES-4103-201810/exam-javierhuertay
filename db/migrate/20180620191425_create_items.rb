class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.integer :ingredient_id
      t.integer :recipe_id

      t.timestamps
    end
  end
end
