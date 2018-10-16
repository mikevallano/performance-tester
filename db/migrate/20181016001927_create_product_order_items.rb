class CreateProductOrderItems < ActiveRecord::Migration[5.1]
  def change
    create_table :product_order_items do |t|
      t.integer :quantity
      t.float :price_per_unit
      t.float :sum_price
      t.belongs_to :product, foreign_key: true

      t.timestamps
    end
  end
end
