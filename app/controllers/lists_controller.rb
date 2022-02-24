class ListsController < ApplicationController
  before_action :set_list, only: %i[ show edit update destroy ]


  def index
    @lists = List.all
  end

  
  def show
  end

  
  def new
    @list = List.new
  end

  def edit
  end

  
  def create
   # product = Product.find(params[:id])
    @list = List.new(list_params)

      if @list.save
        ListMailer.send_order_mail(@list).deliver_later
         redirect_to list_url(@list), notice: "Your order placed successfully" 
      else
       render :new, status: :unprocessable_entity 
      end
  end

  
  def update
   
      if @list.update(list_params)
         redirect_to list_url(@list), notice: "order was successfully updated." 
      else
        render :edit, status: :unprocessable_entity 
      
      end
  end

  
  def destroy
    @list.destroy
      redirect_to lists_url, notice: "List was successfully destroyed." 
  end

  def send_approve_mail
    ListMailer.send_ap.deliver_now
  end

  def send_reject
    ListMailer.send_db.deliver_now
  end

  private
    
    def set_list
      @list = List.find(params[:id])
    end

    
    def list_params
      params.require(:list).permit(:address, :address2, :landmark, :name, :email, :city, :state, :postalcode, :product_id, :status )
    end
end
