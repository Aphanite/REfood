class Product < ApplicationRecord
  belongs_to: supermarket
  has_many: ordered_items
end
