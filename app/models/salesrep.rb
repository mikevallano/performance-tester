class Salesrep < ApplicationRecord
  belongs_to :sales_division
  has_many :orders
  has_many :customers, through: :orders
  has_many :customer_companies, through: :orders
  has_many :product_order_items, through: :orders
  has_many :products, through: :product_order_items
  has_many :product_categories, through: :products

  validates :first_name, :last_name, presence: true
end
