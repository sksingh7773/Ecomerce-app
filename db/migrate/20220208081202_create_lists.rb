class CreateLists < ActiveRecord::Migration[6.1]
  def change
    create_table :lists do |t|
      t.string :address
      t.string :address2
      t.string :landmark
      t.string :name
      t.string :email
      t.string :city
      t.string :state
      t.integer :postalcode

      t.timestamps
    end
  end
end
