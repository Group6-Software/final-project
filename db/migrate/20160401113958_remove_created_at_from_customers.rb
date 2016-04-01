class RemoveCreatedAtFromCustomers < ActiveRecord::Migration
  def change
    remove_column :customers, :created_at, :datetime
  end
end
