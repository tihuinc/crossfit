require 'test_helper'

class FundamentalsControllerTest < ActionController::TestCase
  setup do
    @fundamental = fundamentals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fundamentals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fundamental" do
    assert_difference('Fundamental.count') do
      post :create, fundamental: @fundamental.attributes
    end

    assert_redirected_to fundamental_path(assigns(:fundamental))
  end

  test "should show fundamental" do
    get :show, id: @fundamental.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fundamental.to_param
    assert_response :success
  end

  test "should update fundamental" do
    put :update, id: @fundamental.to_param, fundamental: @fundamental.attributes
    assert_redirected_to fundamental_path(assigns(:fundamental))
  end

  test "should destroy fundamental" do
    assert_difference('Fundamental.count', -1) do
      delete :destroy, id: @fundamental.to_param
    end

    assert_redirected_to fundamentals_path
  end
end
