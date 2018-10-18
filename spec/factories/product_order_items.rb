FactoryGirl.define do
  factory :product_order_item do
    quantity {rand(1..10)}
    price_per_unit {rand(10.25..50.75).round(2)}
    sum_price {quantity * price_per_unit}
    product { create(:product) }
  end
end
