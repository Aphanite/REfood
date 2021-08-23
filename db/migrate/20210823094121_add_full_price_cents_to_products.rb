class AddFullPriceCentsToProducts < ActiveRecord::Migration[6.0]
    def change
    add_monetize :products, :full_price_cents, currency: { present: false }
  end
end
