class AddAmountToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :amount, :integer
  end
end
