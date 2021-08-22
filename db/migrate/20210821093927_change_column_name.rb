class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :products, :total_price_cents, :full_price_cents
  end
end
