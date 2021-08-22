class Product < ApplicationRecord
  monetize :full_price_cents
  monetize :discounted_price_cents
  belongs_to :supermarket
  has_many :ordered_items
end
