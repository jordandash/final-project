class Product < ActiveRecord::Base
	attr_accessible :category_id, :description, :image_filename, :name, :price, :stock_quantity

	has_many :line_items
	has_many :orders, through: :line_items
	belongs_to :category

	validates :name, :category, :price, :stock_quantity, :presence => true
	validates :price,:stock_quantity, :numericality => true
 
end
