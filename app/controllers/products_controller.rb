#by mazheng yue
class ProductsController < ApplicationController
  skip_before_filter :authorize, only: [:show]
  # GET /products
  # GET /products.json
  def index
    @products = Product.all
    @cart = current_cart
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @product = Product.find(params[:id])
    @cart = current_cart
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product }
    end
  end

  # GET /products/new
  # GET /products/new.json
  def new
    @product = Product.new
    @cart = current_cart
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @product }
    end
  end

  # GET /products/1/edit
  def edit
    @cart = current_cart
    @product = Product.find(params[:id])
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(params[:product])
    @product.image_url = get_file_name(params[:product][:image_url])

    respond_to do |format|
      if @product.save
        uploadfile(params[:product][:image_url],@product.image_url)
        format.html { redirect_to @product,
          notice: 'Product was successfully created.' }
        format.json { render json: @product, status: :created,
          location: @product }
      else
        format.html { render action: "new" }
        format.json { render json: @product.errors,
          status: :unprocessable_entity }
      end
    end
  end

  # PUT /products/1
  # PUT /products/1.json
  def update
    @product = Product.find(params[:id])
    old_filename = @product.image_url
    filename = get_file_name(params[:product][:image_url])
    respond_to do |format|
      if @product.update_attributes(:title => params[:product][:title], :description => params[:product][:description],:price => params[:product][:price],:library_type => params[:product][:library_type],:image_url => filename)
        delete_file(old_filename)
        uploadfile(params[:product][:image_url],@product.image_url)
        format.html { redirect_to @product,
          notice: 'Product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @product.errors,
          status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product = Product.find(params[:id])
    delete_file(@product.image_url)
    @product.destroy

    respond_to do |format|
      format.html { redirect_to products_url }
      format.json { head :no_content }
    end
  end
  
  def who_bought
    @product = Product.find(params[:id])
    respond_to do |format|
      format.atom
    end
  end
  
  def get_file_name(file)
    if file == nil
      return nil
    end

    if !file.original_filename.empty?
      @filename = getFileName(file.original_filename)
    end
    return @filename
  end

  def uploadfile(file,filename)
    if !file.original_filename.empty?
      @filename = filename
      File.open("#{Rails.root}/app/assets/images/#{@filename}", "wb") do |f|
        f.write(file.read)
      end
      return @filename
    end
  end

  def getFileName(filename)
     if !filename.nil?
       require "uuidtools"
       UUIDTools::UUID.random_create.to_s + filename
     end
  end
  
  def delete_file(filename)
    @filename = filename
    file_path = "#{Rails.root}/app/assets/images/#{@filename}"
    if File.exist?(file_path)
      File.delete(file_path)
    end
  end

end