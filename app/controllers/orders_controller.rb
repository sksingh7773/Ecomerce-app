class OrdersController < ApplicationController
def index
    	@orders = Order.all
  	end
	
	def show
    @order = Order.find(params[:id])
  	end

	 def new
	   @order = Order.new	
  	end
  	
  	def edit
  	@order = Order.find(params[:id])
	end

  	def create
  		@order = Order.new(order_params)
 
  		if @order.save
    		redirect_to @order
  		else
    		render 'new'
  		end
	end
	def update
  		@order = Order.find(params[:id])
 
  		if @order.update(order_params)
    		redirect_to @order 
  		else
    		render 'edit'
  		end
	end

	def destroy
  		@order = Order.find(params[:id])
  		@order.destroy
 
  		redirect_to orders_path
	end
	private
    def order_params
      params.require(:order).permit(:total_price, :user_id, :total_quantity, :payment_mode, :status)
    end
end
