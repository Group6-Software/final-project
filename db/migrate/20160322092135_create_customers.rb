class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :customer_id
      t.string :name
      t.string :email_address
      t.string :address

      t.timestamps null: false
    end
  end
end
