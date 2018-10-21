class Company < ApplicationRecord
  has_many :customers
  has_many :orders, through: :customers
  has_many :order_items, through: :customers
  has_many :products, through: :customers
  has_many :product_categories, through: :customers
  has_many :salesreps, through: :customers
  has_many :sales_divisions, through: :customers

  validates :name, :tax_id, presence: true
end
