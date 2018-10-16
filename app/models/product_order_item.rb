class ProductOrderItem < ApplicationRecord
  belongs_to :product
  has_many :orders

  validates :quantity, :sum_price, presence: true
end
