class ShopesController < ApplicationController
  def index
   @products = Product.all
  

  end

  def show
    @product = Product.find(params[:id])
  end

  def create

  end
  
end
