require 'test_helper'

class IngredientsNamesControllerTest < ActionController::TestCase
  setup do
    @ingredients_name = ingredients_names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ingredients_names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ingredients_name" do
    assert_difference('IngredientsName.count') do
      post :create, ingredients_name: {  }
    end

    assert_redirected_to ingredients_name_path(assigns(:ingredients_name))
  end

  test "should show ingredients_name" do
    get :show, id: @ingredients_name
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ingredients_name
    assert_response :success
  end

  test "should update ingredients_name" do
    put :update, id: @ingredients_name, ingredients_name: {  }
    assert_redirected_to ingredients_name_path(assigns(:ingredients_name))
  end

  test "should destroy ingredients_name" do
    assert_difference('IngredientsName.count', -1) do
      delete :destroy, id: @ingredients_name
    end

    assert_redirected_to ingredients_names_path
  end
end
