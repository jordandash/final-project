class ContactController < ApplicationController
	def index
		@contacts = Contact.all
		@contact = @contacts.first
		@search   = Product.search(params[:q])
	end

	def search
	end

	def search_results
		@products = Product.where("name LIKE ? OR description LIKE ?", "%#{params[:keywords]}%", "%#{params[:keywords]}%")
		@products = @products.where("category_id = ?", params[:category]) unless params[:category] == ""
	end
end
