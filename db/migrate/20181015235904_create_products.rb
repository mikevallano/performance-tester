class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.float :base_price
      t.belongs_to :product_category, foreign_key: true

      t.timestamps
    end
  end
end
