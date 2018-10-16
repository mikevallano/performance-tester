FactoryGirl.define do
  factory :product_category do
    sequence(:name) { |n| "#{FFaker::Name.first_name}_#{n}" }
    sequence(:description) { |n| "Category description_#{n}" }
  end
end
