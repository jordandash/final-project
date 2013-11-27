class ProductsController < ApplicationController
	def index
		@products = Product.all
		@search   = Product.search(params[:q])
	end
end
