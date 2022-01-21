class Product < ApplicationRecord
	has_one_attached :avatar
	has_many :order_items
end
