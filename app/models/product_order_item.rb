class ProductOrderItem < ApplicationRecord
  belongs_to :product
  has_many :orders
  has_one :product_category, through: :product
  has_many :customers, through: :orders
  has_many :customer_companies, through: :customers
  has_many :salesreps, through: :orders
  has_many :sales_divisions, through: :salesreps

  validates :quantity, :sum_price, presence: true
end
