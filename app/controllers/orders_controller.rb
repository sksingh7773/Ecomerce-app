class OrdersController < ApplicationController
	def index
    @orders = Order.all
  end
  
  def new
  	@Order = Order.new
  
  end
  def create
    @order = Order.new(product_params)

      if @Order.save
        redirect_to order_url(@order), notice: "Product was successfully created." 
        
      else
        render :new, status: :unprocessable_entity 
         
      end
  
  end
  
  def payment

  end

    def pla_order
       @new_order = Order.new(order_params)
    @order = current_user.latest_order
    @order_update = current_user.latest_order.update(total_price: @order.total_price, 
      status: 'payment', total_quantity: @order.total_quantity, payment_mode: @new_order.payment_mode)
    redirect_to orders_path
  end
	private
    def order_params
      params.require(:order).permit(:total_price, :user_id, :total_quantity, :payment_mode, :status)
    end
end
