class ChangeColumnNameOnOrders < ActiveRecord::Migration[6.0]
  def change
    rename_column :orders, :amount, :amount_cents
  end
end
