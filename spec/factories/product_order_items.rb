FactoryGirl.define do
  factory :product_order_item do
    quantity 1
    price_per_unit 1.5
    sum_price 1.5
    product { create(:product) }
  end
end
