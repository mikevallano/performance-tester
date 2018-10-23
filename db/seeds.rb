require 'factory_girl_rails'

if User.count < 10
  10.times do
    user = FactoryGirl.create(:user)
    puts "user created: #{user.email}"
  end
else
  puts "already 10 users. none created"
end

if ProductCategory.count < 10
  10.times do
    product_category = FactoryGirl.create(:product_category)
    puts "product_category created: #{product_category.name}"
  end
else
  puts "already 10 product categories. none created"
end

if Product.count < 100
  100.times do
    FactoryGirl.create(:product, product_category: ProductCategory.all.sample)
  end
  puts "100 products created"
else
  puts "already 100 products. none created."
end

if Company.count < 100
  100.times do
    FactoryGirl.create(:company)
  end
  puts '100 companies created'
end

if Customer.count < 100
  100.times do
    FactoryGirl.create(:customer, company: Company.all.sample)
  end
  puts '100 customers created'
end

if SalesDivision.count < 10
  10.times do
    FactoryGirl.create(:sales_division)
  end
  puts '10 sales_divisions created'
end

if Salesrep.count < 100
  100.times do
    FactoryGirl.create(:salesrep, sales_division: SalesDivision.all.sample)
  end
  puts '100 salesreps created'
end

if Order.count < 100
  100.times do
    FactoryGirl.create(:order,
                        customer: Customer.all.sample,
                        salesrep: Salesrep.all.sample)
  end
  puts '100 orders created'
end

if OrderItem.count < 200
  200.times do
    FactoryGirl.create(:order_item, product: Product.all.sample, order: Order.all.sample)
  end
  puts "200 order_items created"
  order_ids = OrderItem.pluck(:order_id)
  orders_without_products = Order.where.not(id: order_ids)
  puts "orders_without_products count: #{orders_without_products.count}. creating more order items..."
  orders_without_products.each do |order|
    FactoryGirl.create(:order_item, product: Product.all.sample, order: order)
  end
else
  puts "already 100 order_items exist. none created."
end


