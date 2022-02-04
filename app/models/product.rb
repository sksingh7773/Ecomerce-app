class Product < ApplicationRecord
	 validates :brand, presence: true
	  validates :description, presence: true
	   validates :avatar, presence: true
	    validates :price, presence: true
	 
	#before_destroy :not_referenced_by_any_line_item
	has_one_attached :avatar
	has_many :line_items



	
end
