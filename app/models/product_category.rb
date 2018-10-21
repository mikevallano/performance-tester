class ProductCategory < ApplicationRecord
  has_many :products
  has_many :order_items, through: :products
  has_many :orders, through: :products
  has_many :customers, through: :products
  has_many :companies, through: :products
  has_many :salesreps, through: :orders
  has_many :sales_divisions, through: :salesreps

  validates :name, presence: true
end
