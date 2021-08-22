class RemoveFullPriceFromProducts < ActiveRecord::Migration[6.0]
  def change
    remove_column :products, :full_price, :float
  end
end
