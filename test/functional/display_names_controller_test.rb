require 'test_helper'

class DisplayNamesControllerTest < ActionController::TestCase
  setup do
    @display_name = display_names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:display_names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create display_name" do
    assert_difference('DisplayName.count') do
      post :create, display_name: { text: @display_name.text }
    end

    assert_redirected_to display_name_path(assigns(:display_name))
  end

  test "should show display_name" do
    get :show, id: @display_name
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @display_name
    assert_response :success
  end

  test "should update display_name" do
    put :update, id: @display_name, display_name: { text: @display_name.text }
    assert_redirected_to display_name_path(assigns(:display_name))
  end

  test "should destroy display_name" do
    assert_difference('DisplayName.count', -1) do
      delete :destroy, id: @display_name
    end

    assert_redirected_to display_names_path
  end
end
