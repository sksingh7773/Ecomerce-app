class List < ApplicationRecord
has_many :line_items, dependent: :destroy
validates :postalcode, presence: true
	  validates :address, presence: true
	   validates :email, presence: true
	    validates :name, presence: true
has_many :products
#belongs_to :products



 enum status: [:payment, :shipped, :deliver,  :cancelled]
end
