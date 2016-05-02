class ChangeCostTypeInItems < ActiveRecord::Migration
  def up
    change_column :items, :cost, :integer
  end

  def down
    change_column :items, :cost, :string
  end
end
