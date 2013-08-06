require 'test_helper'

class RootCategoriesControllerTest < ActionController::TestCase
  setup do
    @root_category = root_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:root_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create root_category" do
    # assert_difference('RootCategory.count') do
    #   post :create, root_category: { description: @root_category.description, image_url: @root_category.image_url, title: @root_category.title }
    # end

    # assert_redirected_to root_category_path(assigns(:root_category))
  end

  test "should show root_category" do
    get :show, id: @root_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @root_category
    assert_response :success
  end

  test "should update root_category" do
    # put :update, id: @root_category, root_category: { description: @root_category.description, image_url: @root_category.image_url, title: @root_category.title }
    # assert_redirected_to root_category_path(assigns(:root_category))
  end

  test "should destroy root_category" do
    assert_difference('RootCategory.count', -1) do
      delete :destroy, id: @root_category
    end

    assert_redirected_to root_categories_path
  end
end
