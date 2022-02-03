class Order < ApplicationRecord
	has_many :line_items
	def add_product(product)
    current_item = line_items.find_by(product_id: product.id)

    if current_order
      current_order.increment(:quantity)
    else
      current_order = orders.build(product_id: product.id)
    end
    current_order
  end

  def total_price
    orders.to_a.sum { |order| order.total_price }
  end

  
  def total_price
    orders.to_a.sum { |order| order.total_price }
end
