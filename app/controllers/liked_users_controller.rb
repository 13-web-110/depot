class LikedUsersController < ApplicationController
  skip_before_filter :authorize
  def create
    if session[:user_id] == nil
      respond_to do |format|
        format.js
      end
    else
        @product = Product.find_by_id(params[:product_id])
        @liked_user = @product.liked_users.create
        @user = User.find_by_id(session[:user_id])
        @liked_user.user_id = @user.id
        @liked_user.user_name = @user.name
        @liked_user.save
        respond_to do |format|
          format.html {redirect_to store_url}
          format.js
        end
    end 
    
  end
  
  def cancer_like
      @product = Product.find_by_id([params[:product_id]])
      @liked_user = @product.liked_users.find_by_user_id(session[:user_id])
      @product.liked_users.delete(@liked_user)
      @product.save
      respond_to do |format|
        format.html {redirect_to store_url}
        format.js
      end
  end
end
