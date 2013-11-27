class ProductsController < ApplicationController
	def index
		@products = Product.all
		@search   = Product.search(params[:q])	
	end

	def search
	end

	def search_results
	end
end
