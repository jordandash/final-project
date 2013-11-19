class Product < ActiveRecord::Base
  attr_accessible :category_id, :description, :image_filename, :name, :price, :stock_quantity
end
