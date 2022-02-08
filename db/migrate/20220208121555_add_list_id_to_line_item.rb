class AddListIdToLineItem < ActiveRecord::Migration[6.1]
  def change
    add_column :line_items, :list_id, :integer
  end
end
