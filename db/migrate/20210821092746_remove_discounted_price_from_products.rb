class RemoveDiscountedPriceFromProducts < ActiveRecord::Migration[6.0]
  def change
    remove_column :products, :discounted_price, :float
  end
end
