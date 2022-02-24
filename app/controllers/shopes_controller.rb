class ShopesController < ApplicationController
  def index
   @products = Product.where(["brand LIKE ?", "%#{params[:search]}%" ])
  

  end

  def show
    @product = Product.find(params[:id])
  end

  def create

  end
  
end
