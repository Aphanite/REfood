class AddDiscountCentsToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :discount_cents, :integer
  end
end
