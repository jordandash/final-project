class LineItem < ActiveRecord::Base
	attr_accessible :order_id, :price, :product_id, :quantity

	belongs_to :order
	belongs_to :product

	validates :quantity, :product_id, :order_id, :price, :stock_quantity, :presence => true
	validates :price, :stock_quantity, :quantity, :numericality => true
  
end
