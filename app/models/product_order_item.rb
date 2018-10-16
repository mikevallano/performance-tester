class ProductOrderItem < ApplicationRecord
  belongs_to :product

  validates :quantity, :sum_price, presence: true
end
