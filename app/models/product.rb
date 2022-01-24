class Product < ApplicationRecord
	before_destroy :not_referenced_by_any_line_item
	has_one_attached :avatar
	has_many :line_items



	private

  def not_refereced_by_any_line_item
    unless line_items.empty?
      errors.add(:base, "Line items present")
      throw :abort
    end
  end
end
