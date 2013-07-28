class LikedUsersController < ApplicationController
  skip_before_filter :authorize
  def create
    if session[:user_id] == nil
      respond_to do |format|
        format.js
      end
    else
      @product = Product.find_by_id([params[:product_id]])
      @cur_liked_user_exist = @product.liked_users.exists?(:user_id => session[:user_id])
      if @cur_liked_user_exist
        respond_to do |format|
          format.js
        end
      else
        
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
  end
end
