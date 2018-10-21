FactoryGirl.define do
  factory :customer do
    sequence(:first_name) {|n| "#{FFaker::Name.first_name}_#{n}"}
    sequence(:last_name) {|n| "#{FFaker::Name.last_name}_#{n}"}
    phone {FFaker::PhoneNumber.phone_number}
    company { create(:company) }
  end
end
