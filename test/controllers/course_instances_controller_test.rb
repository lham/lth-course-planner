require 'test_helper'

class CourseInstancesControllerTest < ActionController::TestCase
  setup do
    @course_instance = course_instances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_instances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_instance" do
    assert_difference('CourseInstance.count') do
      post :create, course_instance: { allowed_from_year: @course_instance.allowed_from_year, assumed_knowledge: @course_instance.assumed_knowledge, department: @course_instance.department, education_board: @course_instance.education_board, included_in_year: @course_instance.included_in_year, language: @course_instance.language, limited_participants: @course_instance.limited_participants, mandatory: @course_instance.mandatory, required_knowledge: @course_instance.required_knowledge, study_period: @course_instance.study_period, suitable_exchange: @course_instance.suitable_exchange, year: @course_instance.year }
    end

    assert_redirected_to course_instance_path(assigns(:course_instance))
  end

  test "should show course_instance" do
    get :show, id: @course_instance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course_instance
    assert_response :success
  end

  test "should update course_instance" do
    patch :update, id: @course_instance, course_instance: { allowed_from_year: @course_instance.allowed_from_year, assumed_knowledge: @course_instance.assumed_knowledge, department: @course_instance.department, education_board: @course_instance.education_board, included_in_year: @course_instance.included_in_year, language: @course_instance.language, limited_participants: @course_instance.limited_participants, mandatory: @course_instance.mandatory, required_knowledge: @course_instance.required_knowledge, study_period: @course_instance.study_period, suitable_exchange: @course_instance.suitable_exchange, year: @course_instance.year }
    assert_redirected_to course_instance_path(assigns(:course_instance))
  end

  test "should destroy course_instance" do
    assert_difference('CourseInstance.count', -1) do
      delete :destroy, id: @course_instance
    end

    assert_redirected_to course_instances_path
  end
end
