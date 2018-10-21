FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "#{n}_#{FFaker::Internet.email}" }
    sequence(:password) { |n| "#{FFaker::Internet.password}_#{n}" }
  end
end
