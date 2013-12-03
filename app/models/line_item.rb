class LineItem < ActiveRecord::Base
	attr_accessible :order_id, :price, :product_id, :quantity

	belongs_to :order
	belongs_to :product

	validates :quantity, :product_id, :order_id, :price, :presence => true
	validates :price, :quantity, :numericality => true
  
end
