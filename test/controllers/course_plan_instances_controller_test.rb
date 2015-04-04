require 'test_helper'

class CoursePlanInstancesControllerTest < ActionController::TestCase
  setup do
    @course_plan_instance = course_plan_instances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_plan_instances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_plan_instance" do
    assert_difference('CoursePlanInstance.count') do
      post :create, course_plan_instance: { course_plan_id: @course_plan_instance.course_plan_id, year: @course_plan_instance.year }
    end

    assert_redirected_to course_plan_instance_path(assigns(:course_plan_instance))
  end

  test "should show course_plan_instance" do
    get :show, id: @course_plan_instance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course_plan_instance
    assert_response :success
  end

  test "should update course_plan_instance" do
    patch :update, id: @course_plan_instance, course_plan_instance: { course_plan_id: @course_plan_instance.course_plan_id, year: @course_plan_instance.year }
    assert_redirected_to course_plan_instance_path(assigns(:course_plan_instance))
  end

  test "should destroy course_plan_instance" do
    assert_difference('CoursePlanInstance.count', -1) do
      delete :destroy, id: @course_plan_instance
    end

    assert_redirected_to course_plan_instances_path
  end
end
