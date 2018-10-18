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

if ProductOrderItem.count < 100
  100.times do
    FactoryGirl.create(:product_order_item, product: Product.all.sample)
  end
  puts "100 product_order_items created"
else
  puts "already 100 product_order_items exist. none created."
end

