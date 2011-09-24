require 'test_helper'

class WorkoutRecordsControllerTest < ActionController::TestCase
  setup do
    @user = Factory.create(:user)
    sign_in :user, @user

    @workout_record = workout_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:workout_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create workout_record" do
    assert_difference('WorkoutRecord.count') do
      post :create, workout_record: @workout_record.attributes
    end

    assert_redirected_to workout_record_path(assigns(:workout_record))
  end

  test "should show workout_record" do
    get :show, id: @workout_record.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @workout_record.to_param
    assert_response :success
  end

  test "should update workout_record" do
    put :update, id: @workout_record.to_param, workout_record: @workout_record.attributes
    assert_redirected_to workout_record_path(assigns(:workout_record))
  end

  test "should destroy workout_record" do
    assert_difference('WorkoutRecord.count', -1) do
      delete :destroy, id: @workout_record.to_param
    end

    assert_redirected_to workout_records_path
  end
end
