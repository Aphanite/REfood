class AddSupermarketToProducts < ActiveRecord::Migration[6.0]
  def change
    add_reference :products, :supermarket, null: false, foreign_key: true
  end
end
