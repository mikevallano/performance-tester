class Order < ApplicationRecord
  belongs_to :product_order_item
  belongs_to :customer
  belongs_to :salesrep

  # delegate :product, to: :product_order_item
  has_one :product, through: :product_order_item
  has_one :product_category, through: :product
  has_one :sales_division, through: :salesrep
  has_one :customer_company, through: :customer
end
