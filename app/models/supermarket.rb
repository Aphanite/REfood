class Supermarket < ApplicationRecord
  has_many: products
  has_many: supermarket_reviews
  has_many: ordered_items through: products
end
