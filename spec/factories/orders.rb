FactoryGirl.define do
  factory :order do
    customer { create(:customer) }
    salesrep { create(:salesrep) }
    finalized_on { rand(0..90).days.ago }
  end
end
