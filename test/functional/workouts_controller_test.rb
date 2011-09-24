require 'test_helper'

class WorkoutsControllerTest < ActionController::TestCase
  setup do
    @user = Factory.create(:user)
    sign_in :user, @user

    @workout = workouts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:workouts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create workout" do
    assert_difference('Workout.count') do
      post :create, workout: @workout.attributes
    end

    assert_redirected_to workout_path(assigns(:workout))
  end

  test "should show workout" do
    get :show, id: @workout.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @workout.to_param
    assert_response :success
  end

  test "should update workout" do
    put :update, id: @workout.to_param, workout: @workout.attributes
    assert_redirected_to workout_path(assigns(:workout))
  end

  test "should destroy workout" do
    assert_difference('Workout.count', -1) do
      delete :destroy, id: @workout.to_param
    end

    assert_redirected_to workouts_path
  end
end
