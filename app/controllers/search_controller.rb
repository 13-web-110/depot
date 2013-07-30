class SearchController < ApplicationController
	skip_before_filter :authorize

	def results
		@products = Product.find(:all,
			:conditions => ["title like ?", "%" + params[:search_name] + "%"])
		respond_to do |format|
			if @products.size != 0
				format.html
				format.js
  				format.json { render json: @product } 
  			else
  				format.html { redirect_to store_path, notice: "Could not find books." }
			end
		end
	end
end
