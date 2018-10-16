class ProductCategory < ApplicationRecord
  has_many :products
  has_many :product_order_items, through: :products
  has_many :orders, through: :products
  has_many :customers, through: :products
  has_many :customer_companies, through: :products

  validates :name, presence: true
end
