class CreateDeliveryInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :delivery_infos do |t|
      t.integer :customer_id
      t.string :address1
      t.string :address2
      t.integer :phone

      t.timestamps
    end
  end
end
