FactoryGirl.define do
  factory :product do
    sequence(:name) { |n| "#{FFaker::Product.product_name}_#{n}" }
    sequence(:description) { |n| "#{FFaker::Product.product}_#{n}" }
    base_price 1.5
    product_category {create(:product_category)}
  end
end
