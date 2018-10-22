class OrderItem < ApplicationRecord
  belongs_to :product
  belongs_to :order
  has_one :product_category, through: :product
  has_one :customer, through: :order
  has_one :company, through: :customer
  has_one :salesrep, through: :order
  has_one :sales_division, through: :salesrep

  validates :quantity, :sum_price, presence: true
end
