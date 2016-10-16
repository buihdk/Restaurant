class Order < ApplicationRecord
  belongs_to :food_item
  validates :food_item, presence: true
end
