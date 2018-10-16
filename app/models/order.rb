class Order < ApplicationRecord
  belongs_to :product_order_item
  belongs_to :customer
  belongs_to :salesrep
end
