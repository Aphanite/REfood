class CreateSupermarketReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :supermarket_reviews do |t|
      t.float :rating
      t.text :content
      t.references :supermarket, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
