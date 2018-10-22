class FixProductOrderRelationships < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :product_order_item_id, :bigint
    add_column :order_items, :order_id, :bigint
    remove_column :customers, :customer_company_id, :bigint
    add_column :customers, :company_id, :bigint
  end
end
