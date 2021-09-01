class AddPickUpSlotsToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :pick_up_slots, :jsonb
  end
end
