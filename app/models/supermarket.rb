class Supermarket < ApplicationRecord
  has_one :schedule
  has_many :products
  has_many :supermarket_reviews
  has_many :ordered_items, through: :products
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
