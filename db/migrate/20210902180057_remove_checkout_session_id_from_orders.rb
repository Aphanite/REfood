class RemoveCheckoutSessionIdFromOrders < ActiveRecord::Migration[6.0]
  def change
    remove_column :orders, :checkout_session_id, :string
  end
end
