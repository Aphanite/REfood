class Order < ApplicationRecord
  belongs_to :user
  has_many :ordered_items
  has_many :products, through: :ordered_items
  monetize :total_price_cents, numericality: { greater_than_or_equal_to: 0 }
  monetize :discount_cents, numericality: { greater_than_or_equal_to: 0 }

  enum status: { pending: 0, confirmed: 1, declined: 2 }
end
