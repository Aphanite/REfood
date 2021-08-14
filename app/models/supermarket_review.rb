class SupermarketReview < ApplicationRecord
  belongs_to :supermarket
  belongs_to :user
end
