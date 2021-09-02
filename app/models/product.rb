class Product < ApplicationRecord
  monetize :full_price_cents, numericality: { greater_than_or_equal_to: 0 }
  monetize :discounted_price_cents, numericality: { greater_than_or_equal_to: 0 }
  belongs_to :supermarket
  has_many :ordered_items
end
