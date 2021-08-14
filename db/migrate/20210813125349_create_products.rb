class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.float :full_price
      t.float :discounted_price
      t.date :best_before_date
      t.string :category
      t.integer :amount
      t.string :unit

      t.timestamps
    end
  end
end
