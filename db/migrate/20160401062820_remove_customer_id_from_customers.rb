class RemoveCustomerIdFromCustomers < ActiveRecord::Migration
  def change
    remove_column :customers, :customer_id, :integer
  end
end
