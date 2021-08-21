class AddDiscountedPriceToProducts < ActiveRecord::Migration[6.0]
  def change
    add_monetize :products, :discounted_price, currency: { present: false }
  end
end
