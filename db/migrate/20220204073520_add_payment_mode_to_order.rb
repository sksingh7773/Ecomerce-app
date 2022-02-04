class AddPaymentModeToOrder < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :payment_mode, :string
  end
end
