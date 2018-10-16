FactoryGirl.define do
  factory :order do
    product_order_item { create(:product_order_item) }
    customer { create(:customer) }
    salesrep { create(:salesrep) }
    finalized_on { Date.current }
  end
end
