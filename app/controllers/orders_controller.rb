class OrdersController < ApplicationController
	def index
    @orders = Order.all
  end
  
  def show
    @order = Order.find(params[:id])
  end
  
  def payment

  end

  def create
    @order = Order.new(order_params)
    @order.update(user_id: @current_user.id)
    add_line_items_to_order
    @order.save!
    reset_sessions_cart
    redirect_to orders_path
    # byebug
 
  end

  def place_order
    @new_order = Order.new(order_params)
    @order = current_user.latest_order
    @order_update = current_user.latest_order.update(total_price: @order.total_price)
    redirect_to orders_path
  end
	private
    def order_params
      params.require(:order).permit(:total_price, :user_id)
    end
end
