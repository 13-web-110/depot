class RootCategoriesController < ApplicationController
  # GET /root_categories
  # GET /root_categories.json
  def index
    @root_categories = RootCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @root_categories }
    end
  end

  # GET /root_categories/1
  # GET /root_categories/1.json
  def show
    @root_category = RootCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @root_category }
    end
  end

  # GET /root_categories/new
  # GET /root_categories/new.json
  def new
    @root_category = RootCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @root_category }
    end
  end

  # GET /root_categories/1/edit
  def edit
    @root_category = RootCategory.find(params[:id])
  end

  # POST /root_categories
  # POST /root_categories.json
  def create
    @root_category = RootCategory.new(params[:root_category])
    @root_category.image_url = get_file_name(params[:root_category][:image_url],@root_category.id)

    respond_to do |format|
      if @root_category.save
        new_filename = get_file_name(params[:root_category][:image_url],@root_category.id)
        @root_category.update_attributes(:image_url => new_filename)
        uploadfile(params[:root_category][:image_url],@root_category.image_url)
        format.html { redirect_to @root_category, notice: 'Root category was successfully created.' }
        format.json { render json: @root_category, status: :created, location: @root_category }
      else
        format.html { render action: "new" }
        format.json { render json: @root_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /root_categories/1
  # PUT /root_categories/1.json
  def update
    @root_category = RootCategory.find(params[:id])
    old_filename = @root_category.image_url
    filename = get_file_name(params[:root_category][:image_url],@root_category.id)
    respond_to do |format|
      if @root_category.update_attributes(:title => params[:root_category][:title], :description => params[:root_category][:description])
        if params[:root_category][:image_url] == nil
          format.html { redirect_to @root_category, notice: 'Root category was successfully updated.' }
          format.json { head :no_content }
        else
          if @root_category.update_attributes(:image_url => filename) 
            delete_file(old_filename)
            uploadfile(params[:root_category][:image_url],@root_category.image_url)
            format.html { redirect_to @root_category, notice: 'Root category was successfully updated.' }
            format.json { head :no_content }
          else
            format.html { render action: "edit" }
            format.json { render json: @root_category.errors, status: :unprocessable_entity }
          end
        end
      else
        format.html { render action: "edit" }
        format.json { render json: @root_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /root_categories/1
  # DELETE /root_categories/1.json
  def destroy
    @root_category = RootCategory.find(params[:id])
    @root_category.destroy

    respond_to do |format|
      format.html { redirect_to root_categories_url }
      format.json { head :no_content }
    end
  end

  def get_file_name(file,id)
    if file == nil
      return nil
    end

    if !file.original_filename.empty?
      @filename = getFileName(file.original_filename,id)
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

  def getFileName(filename,id)
     if !filename.nil?
       # require "uuidtools"
       # UUIDTools::UUID.random_create.to_s + filename
       "categoryid" + id.to_s + "filename" + filename
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
