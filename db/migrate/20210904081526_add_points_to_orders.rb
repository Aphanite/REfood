class AddPointsToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :points, :integer
  end
end
