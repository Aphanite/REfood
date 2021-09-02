class AddTotalPriceCentsToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :total_price_cents, :integer
  end
end
