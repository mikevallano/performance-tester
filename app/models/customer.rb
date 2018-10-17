class Customer < ApplicationRecord
  belongs_to :customer_company
  has_many :orders
  has_many :product_order_items, through: :orders
  has_many :products, through: :product_order_items
  has_many :product_categories, through: :products
  has_many :salesreps, through: :orders
  has_many :sales_divisions, through: :salesreps

  validates :first_name, :last_name, :phone, presence: true
end
