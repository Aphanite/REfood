class Order < ApplicationRecord
  belongs_to :user
  has_many :ordered_items
  has_many :products, through: :ordered_items
  # monetize :amount_cents

  enum status: { pending: 0, confirmed: 1, declined: 2 }
end
