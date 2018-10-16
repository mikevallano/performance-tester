FactoryGirl.define do
  factory :salesrep do
    sequence(:first_name) { |n| "#{FFaker::Name.first_name}_#{n}" }
    sequence(:last_name) { |n| "#{FFaker::Name.last_name}_#{n}" }
    sales_division { create(:sales_division) }
  end
end
