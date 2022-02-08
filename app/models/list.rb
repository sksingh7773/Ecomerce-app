class List < ApplicationRecord
has_many :line_items, dependent: :destroy
validates :postalcode, presence: true
	  validates :address, presence: true
	   validates :email, presence: true
	    validates :name, presence: true
has_many :products
end
