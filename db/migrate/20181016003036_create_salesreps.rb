class CreateSalesreps < ActiveRecord::Migration[5.1]
  def change
    create_table :salesreps do |t|
      t.string :first_name
      t.string :last_name
      t.belongs_to :sales_division, foreign_key: true

      t.timestamps
    end
  end
end
