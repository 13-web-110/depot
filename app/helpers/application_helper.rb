module ApplicationHelper
  def hidden_div_if(condition, attributes = {}, &block)
    if condition
      attributes["style"] = "display: none"
    end
    content_tag("div", attributes, &block)
  end

  def show_user_name
    if(session[:user_id] != nil)
      @user = User.find_by_id(session[:user_id])
      @user.name
    else
      ""
    end
  end
  
end