class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :salesrep
  has_one :sales_division, through: :salesrep
  has_one :company, through: :customer
  has_many :order_items
  has_many :products, through: :order_items
  has_many :product_categories, through: :products

  def sum_total
    order_items.pluck(:sum_price).inject(:+)
  end
end
