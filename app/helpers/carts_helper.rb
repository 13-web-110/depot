module CartsHelper
  def show_cart_user_name
    @user = User.find_by_id(session[:user_id])
    @user.name
  end
end
