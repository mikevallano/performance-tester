FactoryGirl.define do
  factory :product do
    sequence(:name) { |n| "#{FFaker::Product.product_name}_#{n}" }
    sequence(:description) { |n| "#{FFaker::Product.product}_#{n}" }
    base_price {rand(10.25..50.75).round(2)}
    product_category {create(:product_category)}
  end
end
