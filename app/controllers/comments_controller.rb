class CommentsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @comment = @product.comments.create(params[:comment])
    @user    = User.find_by_id(session[:user_id])
    @comment.commenter = @user.name
    
    respond_to do |format|
      if @comment.save
        format.html { redirect_to product_path(@product) }
        format.json { render json: @comment,
          status: :created, location: @comment }
      else
        format.html { redirect_to product_path(@product), alert: ' Comment can not be nil. ' }
      end
    end
  end
  
  def destroy
    @product = Product.find(params[:product_id])
    @comment = @product.comments.find(params[:id])
    @comment.destroy
    redirect_to product_path(@product)
  end

end
