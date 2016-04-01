class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :order_id
      t.integer :customer_id
      t.integer :item_id
      t.datetime :placed_at
      t.boolean :delievered

      t.timestamps null: false
    end
  end
end
