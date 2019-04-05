class AddIndexToOrderFinalizedOn < ActiveRecord::Migration[5.1]
  def change
    add_index :orders, :finalized_on
  end
end
