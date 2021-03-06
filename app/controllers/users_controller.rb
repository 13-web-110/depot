class UsersController < ApplicationController
  skip_before_filter :authorize, only: [:new, :create]

  # GET /users
  # GET /users.json
  def index
    @users = User.order(:name)
    @cart = current_cart
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
    @cart = current_cart
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new
    @cart = current_cart
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/1/edit
  def edit
    @cart = current_cart
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        session[:user_id] = @user.id
        @user.cart = current_cart
        if @user.name == 'admin'
          session[:admin_id] = @user.id
        end
        format.html { redirect_to store_url,
          notice: "Welcome #{@user.name} ." }
        format.json { render json: @user,
          status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors,
          status: :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to store_url,
          notice: "User #{@user.name} was successfully updated." }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors,
          status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])

    if @user.id == session[:user_id]
      flash[:notice] = "Can't delete your self"
      redirect_to users_url
      return
    end

    begin
      @user.destroy
      flash[:notice] = "User #{@user.name} deleted"
    rescue Exception => e
      flash[:notice] = e.message
    end
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end
  
  
  protected
    def admin_authorize
      unless User.find_by_id(session[:admin_id])
        redirect_to store_url
      end
    end
  # def like_and_cancer_like 
    # if session[:user_id] == nil
      # respond_to do |format|
        # format.js
      # end
    # else
      # @product = Product.find_by_id(params[:product_id])
#      
      # #@user = @product.users.build(session[:user_id])
      # @user = User.find_by_id(session[:user_id])
      # @product.users <<(@user)
      # @user.product = @product
#       
      # @product.save
      # @user.save
      # respond_to do |format|
        # format.html {redirect_to store_url}
        # format.js
      # end
    # end
  # end
  
end