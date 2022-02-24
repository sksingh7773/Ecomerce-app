class AddStatusToList < ActiveRecord::Migration[6.1]
  def change
    add_column :lists, :status, :interger, default: 0
  end
end
