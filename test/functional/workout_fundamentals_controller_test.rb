require 'test_helper'

class WorkoutFundamentalsControllerTest < ActionController::TestCase
  setup do
    @workout_fundamental = workout_fundamentals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:workout_fundamentals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create workout_fundamental" do
    assert_difference('WorkoutFundamental.count') do
      post :create, workout_fundamental: @workout_fundamental.attributes
    end

    assert_redirected_to workout_fundamental_path(assigns(:workout_fundamental))
  end

  test "should show workout_fundamental" do
    get :show, id: @workout_fundamental.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @workout_fundamental.to_param
    assert_response :success
  end

  test "should update workout_fundamental" do
    put :update, id: @workout_fundamental.to_param, workout_fundamental: @workout_fundamental.attributes
    assert_redirected_to workout_fundamental_path(assigns(:workout_fundamental))
  end

  test "should destroy workout_fundamental" do
    assert_difference('WorkoutFundamental.count', -1) do
      delete :destroy, id: @workout_fundamental.to_param
    end

    assert_redirected_to workout_fundamentals_path
  end
end
