#by li yong
class StoreController < ApplicationController
  skip_before_filter :authorize
  def index
  	if params[:set_locale]
  		redirect_to store_path(locale: params[:set_locale])
  	else
    	@products = Product.order(:title)
	  	@cart = current_cart
       session[:cart_mode] = nil
  	end
  end
  def question
    @cart = current_cart
  end
  def contact
    @cart = current_cart
  end
  def news
    @cart = current_cart
  end
  def category
    @cart = current_cart
    @products = Product.order(:library_type)
    @categories = RootCategory.order(:title)
  end
  
  def index_old
    if params[:set_locale]
      redirect_to store_path(locale: params[:set_locale])
    else
      @products = Product.order(:title)
      @cart = current_cart
       session[:cart_mode] = nil
    end
  end
  
  def category_show
    @products = Product.find(:all,
      :conditions => ["library_type = ?", params[:category_type]])
    @cart = current_cart
  end

end