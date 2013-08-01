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

    respond_to do |format|
      if @root_category.save
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

    respond_to do |format|
      if @root_category.update_attributes(params[:root_category])
        format.html { redirect_to @root_category, notice: 'Root category was successfully updated.' }
        format.json { head :no_content }
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
end
