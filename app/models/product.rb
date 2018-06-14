class Product < ApplicationRecord
	belongs_to :category

	def category_name
		category.try(:name)
	end

	def category_name=(name)
		self.category = Category.find_or_create_by(name: name) if name.present?		
	end

	def category_description
		category.try(:description)
	end

	def category_description=(description)
		self.category = Category.find_or_create_by(description: description) if description.present? 
	end
end

