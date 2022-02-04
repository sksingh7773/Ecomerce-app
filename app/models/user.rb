class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  has_many :products
  has_many :orders
  has_one :address, inverse_of: :user, dependent: :destroy
  accepts_nested_attributes_for :address, allow_destroy: true, reject_if: :all_blank
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: [:user, :admin] 

  after_initialize :set_defalt_role, if :new_record?

  def set_defalt_role
    self.role ||  :user
  end
  end     
  def latest_order
    orders.where(status:0).first || new_order
  end

  private
    def new_order
      orders.create(status:0)
    end
    
    def add_order
     self.orders.create!(total_price: 0, total_quantity: 0)
   end
end
