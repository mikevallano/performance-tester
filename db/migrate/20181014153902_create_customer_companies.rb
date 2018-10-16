class CreateCustomerCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :customer_companies do |t|
      t.string :name
      t.integer :tax_id

      t.timestamps
    end
  end
end
