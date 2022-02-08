class AddProductIdToList < ActiveRecord::Migration[6.1]
  def change
    add_column :lists, :product_id, :integer
  end
end
