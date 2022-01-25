class Product < ApplicationRecord
	#before_destroy :not_referenced_by_any_line_item
	has_one_attached :avatar
	has_many :line_items



	
end
