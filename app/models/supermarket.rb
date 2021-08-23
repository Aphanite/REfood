class Supermarket < ApplicationRecord
  has_one :schedule
  has_many :products
  has_many :supermarket_reviews
  has_many :ordered_items, through: :products

  include PgSearch::Model
  pg_search_scope :search_by_address,
    against: [ :address],
    using: {
      tsearch: { prefix: true }
    }
end
