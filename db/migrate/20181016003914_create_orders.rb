class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.belongs_to :product_order_item, foreign_key: true
      t.belongs_to :customer, foreign_key: true
      t.belongs_to :salesrep, foreign_key: true
      t.date :finalized_on

      t.timestamps
    end
  end
end
