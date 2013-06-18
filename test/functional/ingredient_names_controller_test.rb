require 'test_helper'

class IngredientNamesControllerTest < ActionController::TestCase
  setup do
    @ingredient_name = ingredient_names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ingredient_names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ingredient_name" do
    assert_difference('IngredientName.count') do
      post :create, ingredient_name: {  }
    end

    assert_redirected_to ingredient_name_path(assigns(:ingredient_name))
  end

  test "should show ingredient_name" do
    get :show, id: @ingredient_name
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ingredient_name
    assert_response :success
  end

  test "should update ingredient_name" do
    put :update, id: @ingredient_name, ingredient_name: {  }
    assert_redirected_to ingredient_name_path(assigns(:ingredient_name))
  end

  test "should destroy ingredient_name" do
    assert_difference('IngredientName.count', -1) do
      delete :destroy, id: @ingredient_name
    end

    assert_redirected_to ingredient_names_path
  end
end
