require 'factory_girl_rails'

small_num = 100
large_num = 100000

if User.count < 10
  small_num.times do
    user = FactoryGirl.create(:user)
    puts "user created: #{user.email}"
  end
else
  puts "already 10 users. none created"
end

if ProductCategory.count < 10
  small_num.times do
    product_category = FactoryGirl.create(:product_category)
    puts "product_category created: #{product_category.name}"
  end
else
  puts "already 10 product categories. none created"
end

if Product.count < small_num
  product_category_ids = ProductCategory.pluck(:id)
  large_num.times do
    FactoryGirl.create(:product, product_category_id: product_category_ids.sample)
  end
  puts "#{large_num} products created"
else
  puts "already #{small_num} products. none created."
end

if Company.count < small_num
  small_num.times do
    FactoryGirl.create(:company)
  end
  puts "#{small_num} companies created"
end

if Customer.count < small_num
  company_ids = Company.pluck(:id)
  small_num.times do
    FactoryGirl.create(:customer, company_id: company_ids.sample)
  end
  puts "#{small_num} customers created"
end

if SalesDivision.count < small_num
  small_num.times do
    FactoryGirl.create(:sales_division)
  end
  puts "#{small_num} sales divisions crated"
end

if Salesrep.count < small_num
  sales_division_ids = SalesDivision.pluck(:id)
  large_num.times do
    FactoryGirl.create(:salesrep, sales_division_id: sales_division_ids.sample)
  end
  puts "#{large_num} salesreps created"
end

if Order.count < small_num
  customer_ids = Customer.pluck(:id)
  salesrep_ids = Salesrep.pluck(:id)
  large_num.times do
    FactoryGirl.create(:order,
                        customer_id: customer_ids.sample,
                        salesrep_id: salesrep_ids.sample)
  end
  puts "#{large_num} orders created"
end

if OrderItem.count < small_num
  product_ids = Product.pluck(:id)
  order_ids = Order.pluck(:id)
  large_num.times do
    FactoryGirl.create(:order_item, product_id: product_ids.sample, order_id: order_ids.sample)
  end
  puts "#{large_num} order_items created"
  orders_without_products = Order.where.not(id: order_ids)
  puts "orders_without_products count: #{orders_without_products.count}. creating more order items..."
  orders_without_products.each do |order|
    FactoryGirl.create(:order_item, product_id: product_ids.sample, order: order)
  end
else
  puts "already 100 order_items exist. none created."
end


