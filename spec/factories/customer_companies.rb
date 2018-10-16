FactoryGirl.define do
  factory :customer_company do
    sequence(:name) {|n| "#{FFaker::Company.name}_#{n}"}
    sequence(:tax_id) {|n| 1234 + n }
  end
end
