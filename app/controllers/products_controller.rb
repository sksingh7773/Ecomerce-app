class ProductsController < ApplicationController
  before_action :set_product, only: %i[ show edit update destroy ]

 
  def index
    @products = Product.all
  end

  
  def show
  end

  
  def new
    @product = Product.new
  end

 
  def edit
  end

  
  def create
    @product = Product.new(product_params)

      if @product.save
        redirect_to shopes_path, notice: "Product was successfully created." 
        
      else
        render :new, status: :unprocessable_entity 
         
      end
  
  end

  
  def update
    
      if @product.update(product_params)
        redirect_to shopes_path, notice: "Product was successfully updated." 
         
      else
        render 'edit'
       
      end
    end
  

  
  def destroy
    @product.destroy
    redirect_to shopes_path
  end

  private
        def set_product
      @product = Product.find(params[:id])
    end

    
    def product_params
      params.require(:product).permit(:brand, :description, :price, :avatar)
    end
end
