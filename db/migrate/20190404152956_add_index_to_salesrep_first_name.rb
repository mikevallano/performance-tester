class AddIndexToSalesrepFirstName < ActiveRecord::Migration[5.1]
  def change
    add_index :salesreps, :first_name
  end
end
