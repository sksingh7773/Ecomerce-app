class AddTotalQuantityToOrder < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :total_quantity, :integer
  end
end
