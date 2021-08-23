class AddFullPriceToProducts < ActiveRecord::Migration[6.0]
  def change
    add_monetize :products, :full_price, currency: { present: false }
  end
end
