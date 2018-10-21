class RenameTables < ActiveRecord::Migration[5.1]
  def change
    rename_table :product_order_items, :order_items
    rename_table :customer_companies, :companies
  end
end
