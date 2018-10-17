class CustomerCompany < ApplicationRecord
  validates :name, :tax_id, presence: true

  has_many :customers
  has_many :orders, through: :customers
  has_many :product_order_items, through: :customers
  has_many :products, through: :customers
  has_many :product_categories, through: :customers
  has_many :salesreps, through: :customers
  has_many :sales_divisions, through: :customers
end
