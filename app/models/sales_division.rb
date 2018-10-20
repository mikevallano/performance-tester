class SalesDivision < ApplicationRecord
  has_many :salesreps
  has_many :orders, through: :salesreps
  has_many :customers, through: :orders
  has_many :customer_companies, through: :customers
  has_many :product_order_items, through: :orders
  has_many :products, through: :product_order_items
  has_many :product_categories, through: :products

  validates :name, presence: true
end
