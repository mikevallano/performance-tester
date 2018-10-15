FactoryGirl.define do
  factory :sales_division do
    sequence(:name) { |n| "Division name_#{n}" }
  end
end
