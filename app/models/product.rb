class Product < ApplicationRecord
  belongs_to :product_category
  has_many :order_items
  has_many :orders, through: :order_items
  has_many :customers, through: :orders
  has_many :companies, through: :customers
  has_many :salesreps, through: :orders
  has_many :sales_divisions, through: :salesreps

  validates :name, :description, presence: true
end
