class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  has_many :products
  has_many :orders
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: [:user, :admin] 

  after_initialize :set_defalt_role, if :new_record?

  def set_defalt_role
    self.role ||  :user
  end
  end     
end
