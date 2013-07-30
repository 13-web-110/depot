class SearchController < ApplicationController
	skip_before_filter :authorize

	def results
		@products = Product.find_all_by_title(params[:search_name])
		# @products = Product.find(:all,
		# 	:conditions => ["title = ?", params[:search_name]])
		respond_to do |format|
			if @products.size != 0
				format.html
  				format.json { render json: @product } 
  			else
  				format.html { redirect_to store_path, notice: "Could not find books." }
			end
		end
	end
end
