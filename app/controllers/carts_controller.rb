class CartsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :invalid_cart
  before_action :set_cart, only: %i[ show edit update destroy ]

  
  def index
    @carts = Cart.all
  end

  
  def show
  end

 
  def new
    @cart = Cart.new
  end

  
  def edit
  end

  
  def create
    @cart = Cart.new(cart_params)

    
      if @cart.save
        redirect_to cart_url(@cart), notice: "Cart was successfully created." 
        
      else
        render :new, status: :unprocessable_entity 
        
      end
    
  end

  
  def update
    
      if @cart.update(cart_params)
       redirect_to cart_url(@cart), notice: "Cart was successfully updated." 
        
      else
        render :edit, status: :unprocessable_entity 
       
      end
  
  end

 
  def destroy
   @cart.destroy  
   redirect_to root_path, notice: "Thank You" 
  end

  private
    
    def set_cart
      @cart = Cart.find(params[:id])
    end

    
    def cart_params
      params.fetch(:cart, {})
    end

    def invalid_cart
      logger.error "Attempt to access invalid cart #{params[:id]}"
      redirect_to root_path, notice: "That cart doesn't exist"
    end
end
